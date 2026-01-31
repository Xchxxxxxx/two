# 使用轻量的Alpine镜像（适配Railway的容器环境）
FROM nginx:alpine

# 替换Nginx默认配置为自定义配置
COPY nginx.conf /etc/nginx/nginx.conf

# 暴露80端口（Railway会自动映射到公网）
EXPOSE 80

# 前台运行Nginx（适配容器生命周期）
CMD ["nginx", "-g", "daemon off;"]
