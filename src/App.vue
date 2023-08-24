<script setup lang="ts">
import DefaultLayout from '@/layouts/default-layout.vue';
// 文字列として展開してjsの世界で展開する
import rssData from '@/assets/dist/rss.xml?raw';
console.log(rssData);
</script>

<template>
  <DefaultLayout>
    <article class="basic-list">
      <header class="basic-list_header">
        <h1 class="basic-list_title">あいうえお</h1>
      </header>
      <section class="basic-item">
        <a class="basic-item_anchor" href="">
          <h1 class="basic-item_heading">heading</h1>
        </a>
        <time
          class="basic-item_date"
          :datetime="'2023-01-01'"
        >2023-01-01</time>
        <p class="basic-item_description">descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription</p>
      </section>
      <section class="basic-item">
        <a class="basic-item_anchor" href="">
          <h1 class="basic-item_heading">heading</h1>
        </a>
        <time
          class="basic-item_date"
          :datetime="'2023-01-01'"
        >2023-01-01</time>
        <p class="basic-item_description">descriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescriptiondescription</p>
      </section>
    </article>
  </DefaultLayout>
</template>

<style scoped>

.basic-list {

  .basic-list_header {
    display: flex;

    &:nth-child(n + 2) {
      margin-top: 12px;
    }
  }
  .basic-list_title {
    margin: 0;
    font-size: 20px;
  }
}
.basic-item {
  margin-top: 12px;
  padding-top: 12px;
  border-top: 1px solid var(--baseBorder);

  .basic-item_heading {
    margin: 0;
    padding-top: 8px;
    letter-spacing: 0.15em;
    font-size: 18px;
  }

  .basic-item_date {
    display: block;
    font-size: 12px;
  }

  .basic-item_description {
    line-height: 1.6;
    font-size: 14px;
    letter-spacing: 0.15em;
  }
}

.logo {
  height: 6em;
  padding: 1.5em;
  will-change: filter;
  transition: filter 300ms;
}
.logo:hover {
  filter: drop-shadow(0 0 2em #646cffaa);
}
.logo.vue:hover {
  filter: drop-shadow(0 0 2em #42b883aa);
}
</style>
