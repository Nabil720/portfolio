# Lightweight, non-root nginx serving the static portfolio
FROM nginxinc/nginx-unprivileged:1.27-alpine

# Security headers + gzip + caching
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Static site
COPY --chown=nginx:nginx index.html /usr/share/nginx/html/
COPY --chown=nginx:nginx assets/ /usr/share/nginx/html/assets/

EXPOSE 8080
HEALTHCHECK --interval=30s --timeout=3s CMD wget -qO- http://127.0.0.1:8080/ >/dev/null || exit 1
