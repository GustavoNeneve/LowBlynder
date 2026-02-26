import { defineConfig } from 'vite';

export default defineConfig({
  // Use relative asset paths so Electron can load files from disk
  base: './',
  build: {
    outDir: 'dist',
    emptyOutDir: true,
  },
});
