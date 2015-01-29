T = require("toshihiko")
if process.env.NODE_ENV is "procuct"
  options = host: process.env.MYSQL_HOST
  toshihiko = new T.Toshihiko(process.env.DATABASE, process.env.MYSQL_NAME,
    process.env.MYSQL_PASSWORD, options)
  console.log "use procuct databases"
else
  toshihiko = new T.Toshihiko("ggbnb", "root", "", {})
  console.log "use localhost databases"
module.exports = toshihiko