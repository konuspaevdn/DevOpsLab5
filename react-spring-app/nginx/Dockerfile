FROM nginx:1.28-alpine

COPY nginx.conf.template /etc/nginx/nginx.conf.template
COPY entrypoint.sh /entrypoint.sh

RUN chmod +x /entrypoint.sh

EXPOSE ${NGINX_PORT}
ENTRYPOINT ["/entrypoint.sh"]