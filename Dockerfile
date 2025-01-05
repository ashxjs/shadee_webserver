FROM nginx:1.27.3-alpine-slim


COPY index.html /usr/share/nginx/html/index.html
COPY nginx.conf /etc/nginx/nginx.conf
COPY docker-entrypoint /docker-entrypoint

EXPOSE 8080

ENV PORT 8080

ENTRYPOINT ["/docker-entrypoint"]
