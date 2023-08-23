import { defineConfig } from 'vite'
import vue from '@vitejs/plugin-vue'
import postcssNesting from "postcss-nesting";

// https://vitejs.dev/config/
export default defineConfig({
  plugins: [vue()],
  resolve: {
    alias: {
      '@/': `${__dirname}/src/`,
    },
  },
  css: {
    postcss: {
      plugins: [postcssNesting],
    },
  },
});
