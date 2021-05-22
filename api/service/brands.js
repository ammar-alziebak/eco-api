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

exports.brands_get_brand = (data, callBack) => {

    console.log("data.brandId:" + data.brandId);
    pool.query(`SELECT brand.* FROM brand
                WHERE brand.id = ?;`, [
            data.brandId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}