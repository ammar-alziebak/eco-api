const pool = require('../../config/database');

exports.get_dynamic_page_by_code = (data, callBack) => {

    pool.query(`select * from page where LOWER(pageCode) = ?`, [
            data.pageCode.toLowerCase()
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}