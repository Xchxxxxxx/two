# 精准指定Nginx 1.28.1 + Alpine轻量镜像（Railway兼容）
FROM nginx:1.28.1-alpine

# 替换Nginx默认配置为自定义配置（确保配置文件路径正确）
COPY nginx.conf /etc/nginx/nginx.conf

# 可选：删除默认的conf.d配置，避免冲突
RUN rm -rf /etc/nginx/conf.d/*

# 暴露80端口（Railway自动映射公网端口）
EXPOSE 80

# 前台运行Nginx（容器必须的运行方式）
CMD ["nginx", "-g", "daemon off;"]
