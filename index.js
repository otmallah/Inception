const hapi = require("@hapi/hapi");

async function start() {
  const server = hapi.server({
    host: "0.0.0.0",
    port: process.env.PORT || 3000
  });

  server.route({
    method: "GET",
    path: "/",
    handler() {
      return { success: true };
    }
  });

  await server.register({
    plugin: require("hapi-pino"),
    options: {
      prettyPrint: true
    }
  });

  await server.start();

  return server;
}

start().catch(err => {
  console.log(err);
  process.exit(1);
});

http://dl-cdn.alpinelinux.org/alpine/edge/main
http://dl-cdn.alpinelinux.org/alpine/edge/community
http://dl-cdn.alpinelinux.org/alpine/edge/testing

php7.4-cli \
		php8-fpm  php8-mbstring  php8-mysql php8-odbc  php8-pdo-dblib php8-pgsql php8-sqlite3 