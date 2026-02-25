/**
 * OBJ export utility for LowBlynder
 */

/**
 * Export a list of Three.js meshes to OBJ format string.
 * @param {THREE.Mesh[]} meshes
 * @param {THREE} THREE
 * @returns {string}
 */
export function meshesToOBJ(meshes, THREE) {
  let output = '# LowBlynder Export\n# https://github.com/GustavoNeneve/LowBlynder\n\n';
  let vertexOffset = 0;

  meshes.forEach((mesh, idx) => {
    const geo = mesh.geometry;
    const name = (mesh.userData.displayName || 'Object').replace(/\s+/g, '_');
    output += `o ${name}_${idx + 1}\n`;

    // Update world matrix
    mesh.updateMatrixWorld(true);
    const matrix = mesh.matrixWorld;

    const posAttr = geo.attributes.position;
    for (let i = 0; i < posAttr.count; i++) {
      const v = new THREE.Vector3(posAttr.getX(i), posAttr.getY(i), posAttr.getZ(i));
      v.applyMatrix4(matrix);
      output += `v ${v.x.toFixed(5)} ${v.y.toFixed(5)} ${v.z.toFixed(5)}\n`;
    }

    // Normals
    if (geo.attributes.normal) {
      const normAttr = geo.attributes.normal;
      const normalMatrix = new THREE.Matrix3().getNormalMatrix(matrix);
      for (let i = 0; i < normAttr.count; i++) {
        const n = new THREE.Vector3(normAttr.getX(i), normAttr.getY(i), normAttr.getZ(i));
        n.applyMatrix3(normalMatrix).normalize();
        output += `vn ${n.x.toFixed(5)} ${n.y.toFixed(5)} ${n.z.toFixed(5)}\n`;
      }
    }

    output += 's 1\n';

    if (geo.index) {
      const indices = geo.index.array;
      for (let i = 0; i < indices.length; i += 3) {
        const a = indices[i] + 1 + vertexOffset;
        const b = indices[i + 1] + 1 + vertexOffset;
        const c = indices[i + 2] + 1 + vertexOffset;
        output += `f ${a}//${a} ${b}//${b} ${c}//${c}\n`;
      }
    }

    output += '\n';
    vertexOffset += posAttr.count;
  });

  return output;
}

/**
 * Trigger a browser download of the given text content.
 * @param {string} content
 * @param {string} filename
 */
export function downloadText(content, filename) {
  const blob = new Blob([content], { type: 'text/plain' });
  const url = URL.createObjectURL(blob);
  const a = document.createElement('a');
  a.href = url;
  a.download = filename;
  document.body.appendChild(a);
  a.click();
  document.body.removeChild(a);
  URL.revokeObjectURL(url);
}
