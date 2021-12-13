module.exports = {
  apps: [
    {
      name: '2035tw',
      exec_mode: 'fork',
      instances: 1, // Or a number of instances
      script: './node_modules/nuxt/bin/nuxt.js',
      args: 'start',
      env: {
        // 环境参数，当前指定为生产环境 process.env.NODE_ENV
        PORT: 15000,
        NODE_ENV: 'production',
      },
    }
  ]
}