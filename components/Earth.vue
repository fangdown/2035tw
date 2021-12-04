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
      list: [
        {
          date: "2021-12-04",
          title: "布林肯竟称台湾为“国家”，人民日报钟声驳斥",
          link: "https://www.toutiao.com/a7037817273007997477/?channel=&source=search_tab",
        },
        {
          date: "2021-12-03",
          title: "12月3日，爱尔兰支持“台独”；立反华是求财？印度介入台湾问题",
          link: "https://www.toutiao.com/a7037301113183306276/?channel=&source=search_tab",
        },
        {
          date: "2021-12-02",
          title: "郁慕明：惩戒“台独”顽固分子的措施早就该出来",
          link: "https://www.toutiao.com/a7037055494049137160/?channel=&source=search_tab",
        },
        {
          date: "2021-12-01",
          title: "12月1日，解放军核潜艇现身台海；安倍叫嚣台湾问题是日本家务事",
          link: "https://www.toutiao.com/a7036667398346326532/?channel=&source=search_tab",
        },
      ],
    };
  },
  mounted() {
    // const earthEle = document.getElementById('earthmv')
    // earthEle.play()
    setTimeout(() => {
      this.loading = false;
    }, 1000);
  },
  methods: {},
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
