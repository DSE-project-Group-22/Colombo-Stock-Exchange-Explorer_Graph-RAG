import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from 'tailwindcss'

export default defineConfig({
  plugins: [react()],
  css: {
    postcss: {
      plugins: [tailwindcss()],
    },
  }
  ,
  server: {
    port: parseInt(process.env.VITE_DEV_SERVER_PORT || '5173'),
    proxy: {
      '/api': {
        target: process.env.VITE_API_BASE_URL || 'http://localhost:8080',
        changeOrigin: true,
        secure: false,
      },
      '/neo4j': {
        target: process.env.VITE_NEO4J_PROXY_TARGET || 'http://localhost:7474',
        changeOrigin: true,
        secure: false,
        rewrite: (path) => path.replace(/^\/neo4j/, '')
      }
    }
  }
})