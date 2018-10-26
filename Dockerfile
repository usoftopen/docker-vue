FROM node:8

RUN npm install -g cnpm --registry=https://registry.npm.taobao.org
RUN cnpm install -g @vue/cli

ENTRYPOINT ["/bin/bash", "/home/start.sh"]