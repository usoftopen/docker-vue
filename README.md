#### 基于 Docker-compose 的 Vue CLI3 镜像

自定义端口可在项目目录下 `vue.config.js`

    module.exports = {
        devServer: {
            host: '0.0.0.0',
            port: 3000,
            public: 'seller.sdxstore.com'
        }
    }

结合 Nginx 反向代理至 Vue 容器，如下为 nginx config

    server {

        listen   80;
        server_name seller.sdxstore.com;

        location / {
            proxy_pass   http://docker宿主ip:3000/;
        }
    }