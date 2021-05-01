const pool = require('../../config/database');
const { v1: uuidv1 } = require('uuid');

exports.get_all_categories = (data, callBack) => {

    pool.query({
        sql: `SELECT categories.* FROM categories;`,
    }, (error, result, fields) => {

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}