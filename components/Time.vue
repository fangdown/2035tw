<template>
  <div class="bg">
    <div class="content">
      <div class="title">个人发展历程</div>
      <a-timeline pending="工作中..." :reverse="reverse" class="time-line">
            <a-timeline-item 
              v-for="item in record" 
              :key="item.title">
              {{item.title}}-{{item.date}}
            </a-timeline-item>
          </a-timeline>
    </div>
    
  </div>
</template>
<style scoped>
  .bg{
    width: 100%;
    height: 100%;
    background: url('http://img1.qunarzz.com/wugc/p129/201204/20/591bfad63bfb82a193835fbb.jpg_r_1024x683x95_5eec1eb6.jpg') no-repeat ;
    background-size: cover;
  }
  .bgtw{
    width: 100%;
    height: 100%;
    background: url('https://wx3.sinaimg.cn/large/00612INDgy1guwo0s17iaj60u00mi79002.jpg') no-repeat ;
    background-size: cover;
  }
  
  .content{
    height: 100%;
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    background-image: linear-gradient(to bottom, rgba(255,0,0,0), rgba(255,255,255,1));
  }
  .title{
    font-size: 30px;
    text-align: center;
    margin-bottom: 20px;
    font:500%/1 Rockwell,serif;
    text-shadow: 0 1px hsl(0,0%,85%),
      0 2px hsl(0,0%,80%),
      0 3px hsl(0,0%,75%), 
      0 4px hsl(0,0%,70%), 
      0 5px hsl(0,0%,65%),
      0 5px 10px #ffc;
    color: blue;
  }
  .time-line{
    padding: 20px;
    background: rgba(255,255,255,0.5);
  }
</style>
<script>
export default {
  data() {
    return {
      record:[
        {
          title: '大学毕业',
          date: '2008-01-15'
        },
        {
          title: '参加工作-上海',
          date: '2008-03-01'
        },
        {
          title: '国企上班-池州',
          date: '2012-02-01'
        },
        {
          title: '深圳工作-深圳',
          date: '2016-01-01'
        },
        {
          title: '深圳常驻',
          date: '2020-06-06'
        },
      ],
      reverse: false,
    };
  },
  methods: {
    handleClick() {
      this.reverse = !this.reverse;
    },
  },
};
</script>