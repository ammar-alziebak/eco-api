const pool = require('../../config/database');
const { v1: uuidv1 } = require('uuid');

exports.get_all_categories = (data, callBack) => {

    pool.query({
        sql: `SELECT categories.*,
                     (SELECT COUNT(*) FROM product WHERE product.categoryId = categories.id)+
                     (SELECT COUNT(*) FROM product WHERE product.categoryId IN (SELECT c.id FROM categories c WHERE c.parentId = categories.id )) count
              FROM categories;`,
    }, (error, result, fields) => {

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}