FROM ghost:3-alpine

EXPOSE 8080

RUN set -eux; \
    cd "$GHOST_INSTALL"; \
	su-exec node ghost config --ip 0.0.0.0 --port 8080 --no-prompt --db sqlite3 --url https://apptanywhere-dev.appspot.com/blog/ --dbpath "$GHOST_CONTENT/data/ghost.db";
  
