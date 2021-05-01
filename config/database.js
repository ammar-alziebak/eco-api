var mysql = require('mysql');

var pool = mysql.createConnection({
    host: process.env.DB_HOST,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    connectionLimit: process.env.DB_CONNECTION_LIMIT,
    multipleStatements: true
});

pool.connect(function (err) {
    if (err) { throw err; }
    console.log("BD Connected!");
});

module.exports = pool;