<script setup lang="ts">
</script>

<template>
  <div class="main">
    <header class="header">Wiz'z vite training app hoge</header>
    <div class="content">
      <slot />
    </div>
    <footer class="footer">twitter by @wiz_rein</footer>
  </div>
</template>
<style lang='scss' scoped>
// postcss nested基準で記載するがvolorのlintがうるさいので記法としてはscss利用とする
.main {
  --header-height: 40px;
  --footer-height: 40px;
  .header {
    box-sizing: border-box;
    display: flex;
    align-items: center;
    padding: 0 18px;
    height: var(--header-height);
    background: var(--upBg);
    border-bottom: 1px solid #ccc;
  }

  .content {
    box-sizing: border-box;
    padding: 24px 18px;
    min-height: calc(100vh - var(--header-height) - var(--footer-height));
  }

  .footer {
    box-sizing: border-box;
    display: flex;
    justify-content: end;
    align-items: center;
    padding: 0 18px;
    height: 40px;
    background: var(--upBg);
    border-top: 1px solid #ccc;
    font-size: 10px;    
  }
}
</style>
