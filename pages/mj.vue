<template>
  <div>
    <a-row v-for="item in list" :key="item.id" class="row">
      <a-col class="col">
        <a :href="item.value" target="_blank">{{ item.name }}</a>
      </a-col>
    </a-row>
  </div>
</template>
<script>
export default {
  data() {
    return { list: [] };
  },
  async asyncData({ $axios }) {
    const res = await $axios.$get("https://api.git123.cn/git123/link/list-mj");
    const { data = {} } = res || {};
    return { list: data.rows || [] };
  },
};
</script>
<style scoped>
.row {
  padding: 10px;
}
</style>