#!/bin/sh
envsubst '\$NGINX_PORT \$FRONTEND_SERVICE \$BACKEND_SERVICE' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf
exec nginx -g 'daemon off;'