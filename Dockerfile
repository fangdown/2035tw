FROM node:14

WORKDIR /usr/src/app

COPY package*.json ./


RUN npm install

# 全局安装pm2模块
RUN npm install pm2 -g


COPY . .
RUN npm run build

CMD [ "pm2-runtime","start","ecosystem.config.js"]