# Changelog

Todas as mudanças notáveis deste projeto serão documentadas aqui.

Formato baseado em [Keep a Changelog](https://keepachangelog.com/pt-BR/1.0.0/),
e este projeto adere ao [Versionamento Semântico](https://semver.org/lang/pt-BR/).

---

## [1.0.0] – 2026-02-25

### ✨ Funcionalidades

- **Modelador 3D low poly** completo no navegador e como app desktop
- **Workflow 2 cliques**: clique numa forma → clique no viewport → pronto!
- **Biblioteca de formas**: Cubo, Cabeça (8 lados), Tronco, Braço, Perna, Cilindros (4/6/8 lados)
- **Simetria X automática**: espelha objetos ao longo do eixo X com toggle
- **Template de personagem**: gera cabeça + tronco + braços + pernas com 1 clique
- **TransformControls** visuais: Mover (G), Girar (R), Escalar (S)
- **Painel de propriedades** com edição numérica de posição, escala e rotação
- **Exportação OBJ** com normais e transformações de mundo baked in
- **Encaixe na grade** configurável
- **App desktop** (Electron 33) — executa offline sem necessidade de navegador

### 🖥️ Plataformas suportadas

| Sistema | Instalador |
|---------|-----------|
| Windows 10/11 | `LowBlynder-Setup-1.0.0.exe` (NSIS, x64) |
| macOS 12+     | `LowBlynder-1.0.0.dmg` (x64 + Apple Silicon) |
| Linux         | `LowBlynder-1.0.0.AppImage` (x64) |

### 🔧 Tecnologias

- [Three.js](https://threejs.org/) r158 — renderização 3D WebGL
- [Electron](https://www.electronjs.org/) 33 — app desktop
- [Vite](https://vitejs.dev/) 5 — bundler
- [electron-builder](https://www.electron.build/) 25 — empacotamento de instaladores

---

[1.0.0]: https://github.com/GustavoNeneve/LowBlynder/releases/tag/v1.0.0
