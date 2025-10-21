import { defineConfig } from 'vite'
import react from '@vitejs/plugin-react'
import tailwindcss from 'tailwindcss'

export default defineConfig({
  plugins: [react()],
  css: {
    postcss: {
      plugins: [tailwindcss()],
    },
  },
  server: {
    // Let Vite bind on all interfaces inside the container
    host: true,
    // Keep your chosen port
    port: parseInt(process.env.VITE_DEV_SERVER_PORT || '5173'),
    strictPort: true,

    // ✅ Allow your public domain through the reverse proxy
    allowedHosts: ['cse.shaveensilva.com'],

    // ✅ Make HMR work when proxied behind HTTPS (Nginx terminates TLS)
    hmr: {
      host: 'cse.shaveensilva.com',
      clientPort: 443,        // browser connects over 443
      protocol: 'wss',        // because users hit https://
    },

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