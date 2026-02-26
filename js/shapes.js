/**
 * Shape definitions for LowBlynder
 * Each shape has: geometry constructor params, default color, display name
 */

export const SHAPE_CONFIGS = {
  cube: {
    type: 'box',
    params: { width: 1, height: 1, depth: 1 },
    color: 0x4488ff,
    name: 'Cubo',
    icon: '⬜',
  },
  head: {
    type: 'cylinder',
    params: { radiusTop: 0.7, radiusBottom: 0.7, height: 1, radialSegments: 8 },
    color: 0xffaa77,
    name: 'Cabeça (8 lados)',
    icon: '⬡',
  },
  torso: {
    type: 'box',
    params: { width: 1.2, height: 1.5, depth: 0.8 },
    color: 0x44bbaa,
    name: 'Tronco',
    icon: '▭',
  },
  arm: {
    type: 'cylinder',
    params: { radiusTop: 0.2, radiusBottom: 0.18, height: 1.4, radialSegments: 6 },
    color: 0xff8844,
    name: 'Braço',
    icon: '▮',
  },
  leg: {
    type: 'cylinder',
    params: { radiusTop: 0.25, radiusBottom: 0.2, height: 1.8, radialSegments: 6 },
    color: 0x8855ee,
    name: 'Perna',
    icon: '▯',
  },
  cyl4: {
    type: 'cylinder',
    params: { radiusTop: 0.5, radiusBottom: 0.5, height: 1, radialSegments: 4 },
    color: 0xaaaaaa,
    name: 'Cilindro 4L',
    icon: '◇',
  },
  cyl6: {
    type: 'cylinder',
    params: { radiusTop: 0.5, radiusBottom: 0.5, height: 1, radialSegments: 6 },
    color: 0xaaaaaa,
    name: 'Cilindro 6L',
    icon: '⬡',
  },
  cyl8: {
    type: 'cylinder',
    params: { radiusTop: 0.5, radiusBottom: 0.5, height: 1, radialSegments: 8 },
    color: 0xaaaaaa,
    name: 'Cilindro 8L',
    icon: '⬡',
  },
};

/**
 * Create a Three.js mesh for the given shape name.
 * @param {string} shapeName - Key from SHAPE_CONFIGS
 * @param {THREE} THREE - Three.js module reference
 * @returns {THREE.Mesh}
 */
export function createShapeMesh(shapeName, THREE) {
  const config = SHAPE_CONFIGS[shapeName] || SHAPE_CONFIGS.cube;

  let geometry;
  if (config.type === 'box') {
    const { width, height, depth } = config.params;
    geometry = new THREE.BoxGeometry(width, height, depth);
  } else {
    const { radiusTop, radiusBottom, height, radialSegments } = config.params;
    geometry = new THREE.CylinderGeometry(radiusTop, radiusBottom, height, radialSegments);
  }

  const material = new THREE.MeshLambertMaterial({
    color: config.color,
  });

  const mesh = new THREE.Mesh(geometry, material);
  mesh.castShadow = true;
  mesh.receiveShadow = true;
  mesh.userData.shapeName = shapeName;
  mesh.userData.displayName = config.name;
  mesh.userData.isMirror = false;

  // Add wireframe overlay for low-poly look
  const wireMat = new THREE.MeshBasicMaterial({
    color: 0x000000,
    wireframe: true,
    transparent: true,
    opacity: 0.18,
  });
  const wireMesh = new THREE.Mesh(geometry, wireMat);
  mesh.add(wireMesh);

  return mesh;
}

/**
 * Returns the half-height of a mesh's geometry so it can be placed on the ground.
 * Works for BoxGeometry, CylinderGeometry and any geometry with a bounding box.
 * @param {THREE.Mesh} mesh
 * @returns {number}
 */
export function getHalfHeight(mesh) {
  const p = mesh.geometry.parameters;
  if (p.height !== undefined) return p.height / 2;
  // Fallback: compute from bounding box for unexpected geometry types
  mesh.geometry.computeBoundingBox();
  const bb = mesh.geometry.boundingBox;
  return (bb.max.y - bb.min.y) / 2;
}
