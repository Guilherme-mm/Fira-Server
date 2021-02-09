const { Pool } = require('pg');
const config = require('config');

const dbUser = config.get("postgres.user");
const dbHost = config.get("postgres.host");
const database = config.get("postgres.database");
const dbPort = config.get("postgres.port");
const dbUserPassword = config.get("postgres.password");

const pool = new Pool({
    user: dbUser,
    host: dbHost,
    database: database,
    password: dbUserPassword,
    port: dbPort,
});

function query(sql, parameters) {
    return pool.query(sql, parameters);
}

module.exports = {
    query: query
}