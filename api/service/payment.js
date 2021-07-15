const pool = require('../../config/database');

exports.payment_get_payment_methods = (data, callBack) => {

    pool.query({
        sql: `SELECT * FROM payment_method;`,
    }, (error, result, fields) => {

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}

exports.payment_get_transfer_companies = (data, callBack) => {

    pool.query({
        sql: `SELECT * FROM transfer_company;`,
    }, (error, result, fields) => {

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}