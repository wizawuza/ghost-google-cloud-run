FROM ghost:3-alpine

EXPOSE 443

RUN set -eux; \
    cd "$GHOST_INSTALL"; \
	su-exec node ghost config --ip 0.0.0.0 --port 443 --no-prompt --db sqlite3 --url https://dev.apptanywhere.com/blog --dbpath "$GHOST_CONTENT/data/ghost.db";
  
