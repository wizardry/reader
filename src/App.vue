<script setup lang="ts">
import { ref, reactive } from 'vue';
import DefaultLayout from '@/layouts/default-layout.vue';
// 文字列として展開してjsの世界で展開する
import rssData from '@/assets/dist/rss.xml?raw';
import { XMLParser } from 'fast-xml-parser';

const parser = new XMLParser();
const parsedData = parser.parse(rssData);
console.log(parsedData["rdf:RDF"]);
const feedTitle = ref(parsedData["rdf:RDF"].channel.title);
const feed = reactive(parsedData["rdf:RDF"].item);

</script>

<template>
  <DefaultLayout>
    <div class="articles-wrap">
      <article class="basic-list">
        <header class="basic-list_header">
          <h1 class="basic-list_title">{{ feedTitle }}</h1>
        </header>
        <section v-for="(item, index) in feed" :key="index" class="basic-item">
          <time
            class="basic-item_date"
            :datetime="item['dc:date']"
          >{{ item["dc:date"] }}</time>
          <a class="basic-item_anchor" href="item.link">
            <h1 class="basic-item_heading">{{ item.title }}</h1>
          </a>
          <p class="basic-item_description">{{ item.description }}</p>
        </section>
      </article>
    </div>
  </DefaultLayout>
</template>

<style lang="scss" scoped>

.articles-wrap {
  display: flex;
  align-items: stretch;
}
.basic-list {
  width: 300px;
  padding: 16px;
  border: 1px solid var(--baseBorder);
  border-radius: 3px;
  background: var(--downBg);
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

  .basic-item_anchor {
    color: inherit;
    text-decoration: underline;
  }
  .basic-item_heading {
    margin: 0;
    padding-top: 8px;
    letter-spacing: 0.15em;
    font-size: 18px;
    line-height: 1.6;
  }

  .basic-item_date {
    display: block;
    font-size: 12px;
  }

  .basic-item_description {
    line-height: 1.6;
    font-size: 14px;
    letter-spacing: 0.15em;
    word-break: break-all;
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
