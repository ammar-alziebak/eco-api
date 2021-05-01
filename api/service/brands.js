const pool = require('../../config/database');
const { v1: uuidv1 } = require('uuid');

exports.get_all_brands = (data, callBack) => {

    pool.query({
        sql: `SELECT brand.* FROM brand;`,
    }, (error, result, fields) => {

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}