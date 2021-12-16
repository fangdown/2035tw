<template>
  <div class="main">
    <div class="home" v-if="!loading">
      <div role="banner" aria-label="背景大图">
        <div class="home-banner-wrapper">
          <div class="home-banner">
            <div
              class="video-poster"
              style="
                background-image: url('https://p5.toutiaoimg.com/obj/eden-cn/uhbfnupkbps/video/earth_v6.jpeg');
                display: none;
              "
            ></div>
            <video
              id="earthmv"
              src="https://lf9-static.bytednsdoc.com/obj/eden-cn/uhbfnupkbps/video/earth_v6.mp4"
              muted
              loop
              playsinline
              autoplay
              preload="auto"
            ></video>
          </div>
        </div>
      </div>
      <div class="content">
        <ul class="list">
          <li class="item" v-for="item in list" :key="item.title">
            <span class="date">{{ item.date }}</span>
            <a :href="item.link" class="title" target="_blank">
              {{ item.title }}</a
            >
            <span class="line"></span>
          </li>
        </ul>
      </div>
    </div>
    <Loading v-else />
  </div>
</template>
<script>
export default {
  data() {
    return {
      loading: true,
      list: [],
    };
  },
  mounted() {
    this.getList();
  },
  methods: {
    getList() {
      this.$axios.get("/tw/list?page=1").then((res) => {
        const { rows = [] } = res?.data?.data || {};
        this.list = rows;
        this.loading = false;
      });
    },
  },
};
</script>
<style lang="less" scoped>
.main {
  background-color: #000;
  height: 100%;
}
.home-banner-wrapper .home-banner {
  position: relative;
  overflow: hidden;
  width: 100%;
  height: 100%;
}
.home-banner-wrapper .video-poster {
  position: absolute;
  top: 0;
  left: 0;
}
.home-banner-wrapper video {
  position: relative;
  z-index: 1;
  height: 100%;
  -o-object-fit: cover;
  object-fit: cover;
}
.content {
  width: 100%;
  min-width: 1066px;
  height: 100%;
  display: -moz-box;
  display: -ms-flexbox;
  display: flex;
  -moz-box-pack: center;
  -ms-flex-pack: center;
  justify-content: flex-start;
  -moz-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  position: absolute;
  top: 0;
  z-index: 1;
}
.list {
  display: flex;
  justify-content: start;
  flex-direction: column;
  padding: 20px;
  height: 800px;
  overflow-y: auto;
}
.list .item {
  display: flex;
  color: #eee;
  align-items: center;
  padding: 5px 0;
  .date {
    color: #eee;
  }
  .title {
    font-size: 14px;
    margin: 0 10px;
    color: #eee;
  }
  .line {
    width: 500px;
    height: 5px;
    background: linear-gradient(to right, #eee, transparent);
  }
}
</style>
