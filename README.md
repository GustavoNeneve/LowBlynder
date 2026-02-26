# LowBlynder 🎮

**Modelador 3D low poly simples para personagens simétricos**

> 2 cliques para criar um cubo · 2 mais para uma cabeça de 8 lados

---

## ✨ Como usar

### 2 cliques = 1 forma nova

| Passo | Ação |
|-------|------|
| 1️⃣ | Clique em uma forma no painel esquerdo |
| 2️⃣ | Clique no viewport 3D para posicioná-la |
| ✅ | Pronto! |

**Exemplo — Criar uma cabeça com 8 lados:**
1. Clique em **Cabeça 8L** no painel esquerdo
2. Clique no viewport → cabeça criada!

---

## 🚀 Executar / Instalar

### ⬇️ Baixar o executável (forma mais fácil)

Acesse a aba **[Releases](../../releases)** do repositório e baixe o instalador para o seu sistema:

| Sistema | Arquivo |
|---------|---------|
| **Windows** | `LowBlynder-Setup-x.x.x.exe` — instalador NSIS (duplo clique para instalar) |
| **macOS**   | `LowBlynder-x.x.x.dmg` — arraste para a pasta Aplicativos |
| **Linux**   | `LowBlynder-x.x.x.AppImage` — execute diretamente (`chmod +x` + duplo clique) |

> ⚠️ Como o executável não é assinado digitalmente, o Windows mostrará "Windows Defender SmartScreen" e o macOS mostrará "desenvolvedor não identificado". Isso é esperado para projetos open source.
> - **Windows:** clique em "Mais informações → Executar assim mesmo"
> - **macOS:** tente `Ctrl+clique → Abrir`; se ainda bloquear, vá em **Configurações do Sistema → Privacidade e Segurança** e clique em **"Abrir assim mesmo"**

---

### 📦 Publicar uma nova release (mantenedores)

1. Vá em **Actions → Create Release → Run workflow**
2. Digite a versão (ex: `1.0.0`) e clique **Run workflow**
3. Aguarde ~10 min — o CI vai compilar e publicar automaticamente na aba **Releases**

---

### 🔨 Compilar você mesmo

```bash
# 1. Instalar dependências
npm install

# 2a. Rodar no navegador (desenvolvimento)
npm run dev
# Acesse: http://localhost:5173

# 2b. Rodar como app desktop (desenvolvimento)
npm run start

# 3. Gerar o executável (Windows: .exe | macOS: .dmg | Linux: .AppImage)
npm run dist
# O instalador estará em: dist-electron/
```

**Requisitos:** [Node.js 18+](https://nodejs.org/) e npm

---

## 🎨 Funcionalidades

| Recurso | Descrição |
|---------|-----------|
| **Formas básicas** | Cubo, Cabeça (8 lados), Cilindros (4/6/8 lados) |
| **Personagem** | Tronco, Braço, Perna prontos para usar |
| **🔄 Simetria X** | Espelha objetos automaticamente no eixo X |
| **Template** | Cria um personagem base (cabeça + tronco + braços + pernas) com 1 clique |
| **Transformações** | Mover, Girar, Escalar com handles visuais ou painel de propriedades |
| **Exportar OBJ** | Exporta a cena para formato `.obj` (compatível com Blender, etc.) |

---

## ⌨️ Atalhos

| Tecla | Ação |
|-------|------|
| `G` | Modo Mover |
| `R` | Modo Girar |
| `S` | Modo Escalar |
| `Del` | Apagar objeto selecionado |
| `Esc` | Cancelar modo / Desselecionar |
| Scroll | Zoom |
| Botão direito + arrastar | Orbitar câmera |

---

## 🏗️ Estrutura do projeto

```
LowBlynder/
├── index.html             # Aplicação web (fonte)
├── css/
│   └── style.css          # Estilos da interface
├── js/
│   ├── app.js             # Lógica principal (Three.js, cena, interações)
│   ├── shapes.js          # Definições e criação de formas 3D
│   └── export.js          # Exportação para OBJ
├── electron/
│   └── main.js            # Processo principal do Electron
├── vite.config.js         # Configuração do bundler Vite
├── CHANGELOG.md           # Histórico de versões
├── package.json           # Dependências e scripts
└── .github/
    └── workflows/
        ├── build.yml      # CI/CD: gera .exe/.dmg/.AppImage ao criar tag v*
        └── release.yml    # Cria tag de versão com 1 clique (Actions UI)
```

---

## 🛠️ Tecnologias

- **[Three.js](https://threejs.org/)** r158 — renderização 3D
- **[Electron](https://www.electronjs.org/)** 33 — empacotamento como app desktop
- **[Vite](https://vitejs.dev/)** 5 — bundler (empacota o Three.js localmente)
- **[electron-builder](https://www.electron.build/)** 25 — gera .exe / .dmg / .AppImage
- Vanilla JavaScript ES2020
- CSS moderno com variáveis CSS