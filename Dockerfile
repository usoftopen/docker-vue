FROM node:8

# 安装基础工具
RUN apt-get update && apt-get install -y vim

# 安装 Vue 脚手架
RUN yarn global add @vue/cli

ENTRYPOINT ["/bin/bash", "/home/start.sh"]