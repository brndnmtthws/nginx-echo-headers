FROM openresty/openresty:1.11.2.5-alpine

EXPOSE 8080
ADD nginx.conf /usr/local/openresty/nginx/conf/nginx.conf
