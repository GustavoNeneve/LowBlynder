/**
 * LowBlynder - Main Application
 * Simple Low Poly 3D Modeler for Symmetric Characters
 *
 * Workflow:
 *   1️⃣ Click a shape button in the left panel  (enters placement mode)
 *   2️⃣ Click in the 3D viewport              (places the shape)
 */

import * as THREE from 'three';
import { OrbitControls } from 'three/addons/controls/OrbitControls.js';
import { TransformControls } from 'three/addons/controls/TransformControls.js';
import { createShapeMesh, getHalfHeight } from './shapes.js';
import { meshesToOBJ, downloadText } from './export.js';

/** Minimum X offset (world units) for a shape to get a symmetry mirror. */
const SYMMETRY_THRESHOLD = 0.05;

class LowBlynderApp {
  constructor() {
    this.objects = [];        // all meshes in the scene (including mirrors)
    this.selected = null;     // currently selected mesh
    this.placementMode = null; // shape key while in placement mode
    this.symmetry = false;
    this.snapGrid = true;

    this._pointerDownPos = null;
    this._isDragging = false;

    this._initRenderer();
    this._initScene();
    this._initCamera();
    this._initOrbit();
    this._initTransformControls();
    this._initLights();
    this._initGrid();
    this._initPointerEvents();
    this._initUI();
    this._resize();
    window.addEventListener('resize', () => this._resize());
    this._animate();
  }

  // ─── Setup ──────────────────────────────────────────────────────────────────

  _initRenderer() {
    this.canvas = document.getElementById('canvas');
    this.renderer = new THREE.WebGLRenderer({ canvas: this.canvas, antialias: true });
    this.renderer.setPixelRatio(Math.min(window.devicePixelRatio, 2));
    this.renderer.shadowMap.enabled = true;
    this.renderer.shadowMap.type = THREE.PCFSoftShadowMap;
  }

  _initScene() {
    this.scene = new THREE.Scene();
    this.scene.background = new THREE.Color(0x26262b);
    this.raycaster = new THREE.Raycaster();
    this.mouse = new THREE.Vector2();
    this.groundPlane = new THREE.Plane(new THREE.Vector3(0, 1, 0), 0);
  }

  _initCamera() {
    this.camera = new THREE.PerspectiveCamera(45, 1, 0.1, 1000);
    this.camera.position.set(6, 6, 10);
    this.camera.lookAt(0, 1, 0);
  }

  _initOrbit() {
    this.orbit = new OrbitControls(this.camera, this.renderer.domElement);
    this.orbit.enableDamping = true;
    this.orbit.dampingFactor = 0.08;
    this.orbit.target.set(0, 1, 0);
  }

  _initTransformControls() {
    this.transformCtrl = new TransformControls(this.camera, this.renderer.domElement);
    this.transformCtrl.setSize(0.8);

    this.transformCtrl.addEventListener('dragging-changed', (e) => {
      this.orbit.enabled = !e.value;
    });

    this.transformCtrl.addEventListener('change', () => {
      if (this.selected) {
        this._syncMirror(this.selected);
        this._refreshProps(this.selected);
      }
    });

    this.transformCtrl.addEventListener('objectChange', () => {
      if (this.selected) this._syncMirror(this.selected);
    });

    this.scene.add(this.transformCtrl);
  }

  _initLights() {
    this.scene.add(new THREE.AmbientLight(0xffffff, 0.45));

    const sun = new THREE.DirectionalLight(0xffffff, 0.9);
    sun.position.set(6, 12, 8);
    sun.castShadow = true;
    sun.shadow.mapSize.set(1024, 1024);
    this.scene.add(sun);

    const fill = new THREE.DirectionalLight(0x8899ff, 0.3);
    fill.position.set(-5, 4, -6);
    this.scene.add(fill);
  }

  _initGrid() {
    this.scene.add(new THREE.GridHelper(30, 30, 0x3a3a3a, 0x2e2e2e));

    // Symmetry plane – thin semi-transparent slab at X = 0
    const planeGeo = new THREE.PlaneGeometry(30, 30);
    const planeMat = new THREE.MeshBasicMaterial({
      color: 0x4488ff,
      transparent: true,
      opacity: 0.04,
      side: THREE.DoubleSide,
      depthWrite: false,
    });
    this.symPlane = new THREE.Mesh(planeGeo, planeMat);
    this.symPlane.rotation.y = Math.PI / 2;
    this.symPlane.visible = false;
    this.scene.add(this.symPlane);
  }

  _initPointerEvents() {
    const el = this.renderer.domElement;

    el.addEventListener('pointerdown', (e) => {
      this._pointerDownPos = { x: e.clientX, y: e.clientY };
      this._isDragging = false;
    });

    el.addEventListener('pointermove', (e) => {
      if (!this._pointerDownPos) return;
      const dx = e.clientX - this._pointerDownPos.x;
      const dy = e.clientY - this._pointerDownPos.y;
      if (Math.sqrt(dx * dx + dy * dy) > 4) this._isDragging = true;
    });

    el.addEventListener('pointerup', (e) => {
      if (!this._isDragging && this._pointerDownPos && e.button === 0) {
        this._handleClick(e);
      }
      this._pointerDownPos = null;
      this._isDragging = false;
    });
  }

  _resize() {
    const vp = document.getElementById('viewport');
    const w = vp.clientWidth;
    const h = vp.clientHeight;
    this.renderer.setSize(w, h);
    this.camera.aspect = w / h;
    this.camera.updateProjectionMatrix();
  }

  // ─── UI Initialization ───────────────────────────────────────────────────────

  _initUI() {
    // Shape buttons – click activates placement mode
    document.querySelectorAll('.shape-btn').forEach((btn) => {
      btn.addEventListener('click', () => {
        this._enterPlacement(btn.dataset.shape);
      });
    });

    // Select tool button
    document.getElementById('btn-select').addEventListener('click', () => {
      this._exitPlacement();
    });

    // Transform mode buttons
    document.getElementById('btn-translate').addEventListener('click', () => {
      this.transformCtrl.setMode('translate');
      this._setActiveTransformBtn('btn-translate');
    });
    document.getElementById('btn-rotate').addEventListener('click', () => {
      this.transformCtrl.setMode('rotate');
      this._setActiveTransformBtn('btn-rotate');
    });
    document.getElementById('btn-scale').addEventListener('click', () => {
      this.transformCtrl.setMode('scale');
      this._setActiveTransformBtn('btn-scale');
    });

    // Symmetry toggle
    document.getElementById('symmetry-toggle').addEventListener('change', (e) => {
      this.symmetry = e.target.checked;
      this.symPlane.visible = this.symmetry;
    });

    // Snap toggle
    document.getElementById('snap-toggle').addEventListener('change', (e) => {
      this.snapGrid = e.target.checked;
    });

    // Character template button
    document.getElementById('btn-character').addEventListener('click', () => {
      this._buildCharacterTemplate();
    });

    // Export
    document.getElementById('btn-export').addEventListener('click', () => {
      this._exportOBJ();
    });

    // Clear scene
    document.getElementById('btn-clear').addEventListener('click', () => {
      if (confirm('Limpar toda a cena?')) this._clearScene();
    });

    // Delete selected
    document.getElementById('btn-delete').addEventListener('click', () => {
      this._deleteSelected();
    });

    // Properties panel – position
    ['pos-x', 'pos-y', 'pos-z'].forEach((id) => {
      document.getElementById(id).addEventListener('input', () => {
        if (!this.selected) return;
        this.selected.position.set(
          parseFloat(document.getElementById('pos-x').value) || 0,
          parseFloat(document.getElementById('pos-y').value) || 0,
          parseFloat(document.getElementById('pos-z').value) || 0,
        );
        this._syncMirror(this.selected);
      });
    });

    // Properties panel – scale
    ['scale-x', 'scale-y', 'scale-z'].forEach((id) => {
      document.getElementById(id).addEventListener('input', () => {
        if (!this.selected) return;
        const sx = parseFloat(document.getElementById('scale-x').value) || 1;
        const sy = parseFloat(document.getElementById('scale-y').value) || 1;
        const sz = parseFloat(document.getElementById('scale-z').value) || 1;
        // Preserve mirror sign on X
        const sign = this.selected.userData.isMirror ? -1 : 1;
        this.selected.scale.set(sign * sx, sy, sz);
        this._syncMirror(this.selected);
      });
    });

    // Properties panel – rotation
    ['rot-x', 'rot-y', 'rot-z'].forEach((id) => {
      document.getElementById(id).addEventListener('input', () => {
        if (!this.selected) return;
        const d = Math.PI / 180;
        this.selected.rotation.set(
          (parseFloat(document.getElementById('rot-x').value) || 0) * d,
          (parseFloat(document.getElementById('rot-y').value) || 0) * d,
          (parseFloat(document.getElementById('rot-z').value) || 0) * d,
        );
        this._syncMirror(this.selected);
      });
    });

    // Properties panel – color
    document.getElementById('obj-color').addEventListener('input', (e) => {
      if (!this.selected) return;
      this.selected.material.color.set(e.target.value);
      if (this.selected.userData.mirror) {
        this.selected.userData.mirror.material.color.set(e.target.value);
      }
    });

    // Keyboard shortcuts
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape') {
        if (this.placementMode) this._exitPlacement();
        else this._deselect();
      }
      if (e.key === 'Delete' || e.key === 'Backspace') {
        if (document.activeElement === document.body) this._deleteSelected();
      }
      if (document.activeElement === document.body) {
        if (e.key === 'g') { this.transformCtrl.setMode('translate'); this._setActiveTransformBtn('btn-translate'); }
        if (e.key === 'r') { this.transformCtrl.setMode('rotate'); this._setActiveTransformBtn('btn-rotate'); }
        if (e.key === 's') { this.transformCtrl.setMode('scale'); this._setActiveTransformBtn('btn-scale'); }
      }
    });
  }

  _setActiveTransformBtn(activeId) {
    ['btn-translate', 'btn-rotate', 'btn-scale'].forEach((id) => {
      document.getElementById(id).classList.toggle('active', id === activeId);
    });
  }

  // ─── Placement Mode ──────────────────────────────────────────────────────────

  _enterPlacement(shapeName) {
    this.placementMode = shapeName;
    this.transformCtrl.detach();
    this._deselect(false);

    document.querySelectorAll('.shape-btn').forEach((b) => b.classList.remove('active'));
    const btn = document.querySelector(`.shape-btn[data-shape="${shapeName}"]`);
    if (btn) btn.classList.add('active');
    document.getElementById('btn-select').classList.remove('active');

    document.getElementById('placement-hint').classList.remove('hidden');
    this.canvas.style.cursor = 'crosshair';
    this._setStatus(`Modo: Colocar ${shapeName} — clique no viewport`);
  }

  _exitPlacement() {
    this.placementMode = null;
    document.querySelectorAll('.shape-btn').forEach((b) => b.classList.remove('active'));
    document.getElementById('btn-select').classList.add('active');
    document.getElementById('placement-hint').classList.add('hidden');
    this.canvas.style.cursor = 'default';
    this._setStatus('Modo: Selecionar');
  }

  // ─── Click / Selection ───────────────────────────────────────────────────────

  _handleClick(event) {
    const rect = this.canvas.getBoundingClientRect();
    this.mouse.x = ((event.clientX - rect.left) / rect.width) * 2 - 1;
    this.mouse.y = -((event.clientY - rect.top) / rect.height) * 2 + 1;
    this.raycaster.setFromCamera(this.mouse, this.camera);

    if (this.placementMode) {
      // Place shape on ground plane
      const target = new THREE.Vector3();
      if (this.raycaster.ray.intersectPlane(this.groundPlane, target)) {
        if (this.snapGrid) {
          target.x = Math.round(target.x * 2) / 2;
          target.z = Math.round(target.z * 2) / 2;
        }
        const mesh = this._placeShape(this.placementMode, target);
        this._exitPlacement();
        this._select(mesh);
      }
    } else {
      // Select an object
      const selectables = this.objects.filter((o) => !o.userData.isMirror);
      const hits = this.raycaster.intersectObjects(selectables, true);
      if (hits.length > 0) {
        // Walk up to find the top-level mesh that's in this.objects
        let obj = hits[0].object;
        while (obj.parent && !this.objects.includes(obj)) {
          obj = obj.parent;
        }
        if (this.objects.includes(obj)) this._select(obj);
      } else {
        this._deselect();
      }
    }
  }

  // ─── Shape Placement ─────────────────────────────────────────────────────────

  _placeShape(shapeName, position) {
    const mesh = createShapeMesh(shapeName, THREE);
    const halfH = getHalfHeight(mesh);
    mesh.position.set(position.x, halfH, position.z);
    this.scene.add(mesh);
    this.objects.push(mesh);

    // Create symmetry mirror if X is meaningfully off-center
    if (this.symmetry && Math.abs(position.x) > SYMMETRY_THRESHOLD) {
      const mirror = createShapeMesh(shapeName, THREE);
      mirror.position.set(-position.x, halfH, position.z);
      mirror.scale.x = -1;
      mirror.userData.isMirror = true;
      mirror.userData.mirrorOf = mesh;
      mesh.userData.mirror = mirror;
      this.scene.add(mirror);
      this.objects.push(mirror);
    }

    this._updateObjectCount();
    return mesh;
  }

  // ─── Selection ───────────────────────────────────────────────────────────────

  _select(mesh) {
    if (this.selected === mesh) return;
    this._deselect(false);
    this.selected = mesh;
    mesh.material.emissive = new THREE.Color(0x223344);
    this.transformCtrl.attach(mesh);

    document.getElementById('no-selection').classList.add('hidden');
    document.getElementById('object-properties').classList.remove('hidden');
    this._refreshProps(mesh);
    document.getElementById('status-selected').textContent =
      `Selecionado: ${mesh.userData.displayName || 'Objeto'}`;
  }

  _deselect(updateStatus = true) {
    if (this.selected) {
      this.selected.material.emissive = new THREE.Color(0x000000);
      this.selected = null;
    }
    this.transformCtrl.detach();
    document.getElementById('no-selection').classList.remove('hidden');
    document.getElementById('object-properties').classList.add('hidden');
    if (updateStatus) {
      document.getElementById('status-selected').textContent = 'Selecionado: nenhum';
    }
  }

  // ─── Properties Panel ────────────────────────────────────────────────────────

  _refreshProps(mesh) {
    const p = mesh.position;
    const s = mesh.scale;
    const r = mesh.rotation;
    const DEG = 180 / Math.PI;

    document.getElementById('pos-x').value = p.x.toFixed(2);
    document.getElementById('pos-y').value = p.y.toFixed(2);
    document.getElementById('pos-z').value = p.z.toFixed(2);

    document.getElementById('scale-x').value = Math.abs(s.x).toFixed(2);
    document.getElementById('scale-y').value = s.y.toFixed(2);
    document.getElementById('scale-z').value = s.z.toFixed(2);

    document.getElementById('rot-x').value = (r.x * DEG).toFixed(1);
    document.getElementById('rot-y').value = (r.y * DEG).toFixed(1);
    document.getElementById('rot-z').value = (r.z * DEG).toFixed(1);

    document.getElementById('obj-color').value =
      '#' + mesh.material.color.getHexString();
  }

  // ─── Symmetry / Mirror ───────────────────────────────────────────────────────

  _syncMirror(mesh) {
    if (!mesh.userData.mirror) return;
    const m = mesh.userData.mirror;
    m.position.set(-mesh.position.x, mesh.position.y, mesh.position.z);
    m.scale.set(-Math.abs(mesh.scale.x), mesh.scale.y, mesh.scale.z);
    m.rotation.set(mesh.rotation.x, -mesh.rotation.y, -mesh.rotation.z);
  }

  // ─── Delete / Clear ───────────────────────────────────────────────────────────

  _deleteSelected() {
    if (!this.selected) return;
    const mesh = this.selected;
    this._deselect(false);

    // Remove associated mirror
    if (mesh.userData.mirror) {
      this.scene.remove(mesh.userData.mirror);
      const idx = this.objects.indexOf(mesh.userData.mirror);
      if (idx > -1) this.objects.splice(idx, 1);
    }

    this.scene.remove(mesh);
    const idx = this.objects.indexOf(mesh);
    if (idx > -1) this.objects.splice(idx, 1);

    document.getElementById('no-selection').classList.remove('hidden');
    document.getElementById('object-properties').classList.add('hidden');
    document.getElementById('status-selected').textContent = 'Selecionado: nenhum';
    this._updateObjectCount();
  }

  _clearScene() {
    this._deselect(false);
    this.objects.forEach((o) => this.scene.remove(o));
    this.objects = [];
    document.getElementById('no-selection').classList.remove('hidden');
    document.getElementById('object-properties').classList.add('hidden');
    document.getElementById('status-selected').textContent = 'Selecionado: nenhum';
    this._updateObjectCount();
  }

  // ─── Character Template ──────────────────────────────────────────────────────

  _buildCharacterTemplate() {
    this._clearScene();

    const place = (shapeName, x, y, z) => {
      const mesh = createShapeMesh(shapeName, THREE);
      mesh.position.set(x, y, z);
      this.scene.add(mesh);
      this.objects.push(mesh);

      if (Math.abs(x) > SYMMETRY_THRESHOLD) {
        const mirror = createShapeMesh(shapeName, THREE);
        mirror.position.set(-x, y, z);
        mirror.scale.x = -1;
        mirror.userData.isMirror = true;
        mirror.userData.mirrorOf = mesh;
        mesh.userData.mirror = mirror;
        this.scene.add(mirror);
        this.objects.push(mirror);
      }
      return mesh;
    };

    place('head',   0,    4.0,  0);
    place('torso',  0,    2.25, 0);
    place('arm',    0.85, 2.25, 0);
    place('leg',    0.35, 0.9,  0);

    this._updateObjectCount();
    this._setStatus('Template de personagem criado!');
  }

  // ─── Export ──────────────────────────────────────────────────────────────────

  _exportOBJ() {
    const exportable = this.objects;
    if (exportable.length === 0) {
      alert('A cena está vazia. Adicione alguns objetos primeiro!');
      return;
    }
    const obj = meshesToOBJ(exportable, THREE);
    downloadText(obj, 'lowblynder_export.obj');
  }

  // ─── Status / Counters ───────────────────────────────────────────────────────

  _setStatus(text) {
    document.getElementById('status-mode').textContent = text;
  }

  _updateObjectCount() {
    const count = this.objects.filter((o) => !o.userData.isMirror).length;
    document.getElementById('status-objects').textContent = `Objetos: ${count}`;
  }

  // ─── Render Loop ─────────────────────────────────────────────────────────────

  _animate() {
    requestAnimationFrame(() => this._animate());
    this.orbit.update();
    this.renderer.render(this.scene, this.camera);
  }
}

// Boot
window.addEventListener('DOMContentLoaded', () => {
  window.app = new LowBlynderApp();
});
