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

## 🚀 Executar localmente

```bash
# Sem instalação – apenas abra index.html no navegador
# OU use um servidor local:
npx serve .
```

Depois acesse: `http://localhost:3000`

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
├── index.html       # Aplicação principal (abra no navegador)
├── css/
│   └── style.css    # Estilos da interface
├── js/
│   ├── app.js       # Lógica principal (Three.js, cena, interações)
│   ├── shapes.js    # Definições e criação de formas 3D
│   └── export.js    # Exportação para OBJ
└── package.json
```

---

## 🛠️ Tecnologias

- **[Three.js](https://threejs.org/)** r158 — renderização 3D
- Vanilla JavaScript ES2020 (sem build step)
- CSS moderno com variáveis CSS