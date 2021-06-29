const pool = require('../../config/database');

exports.wishlist_get_user_wish_products = (data, callBack) => {

    pool.query({
        sql: `SELECT wishlist.* FROM wishlist WHERE userId = ?;`,
    }, [
        data.userId
    ], (error, result, fields) => {

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}

exports.wishlist_add_remove_wish_product = (data, callBack) => {

    let params = data.body;
    console.log(params.userId);
    console.log(params.productId);
    pool.query(`select count(*) count from wishlist where userId = ? and productId = ?`, [
            params.userId,
            params.productId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }

            if (result[0].count < 1) {
                pool.query(`INSERT INTO wishlist (userId, productId) values(?,?)`, [
                        params.userId,
                        params.productId
                    ],
                    (error, result, fields) => {
                        if (error) {
                            return callBack(error);
                        }
                        return callBack(null, result)
                    });

            } else {

                pool.query(`delete from wishlist where userId = ? and productId = ?`, [
                        params.userId,
                        params.productId
                    ],
                    (error, result, fields) => {
                        if (error) {
                            return callBack(error);
                        }
                        return callBack(null, result)
                    });
            }
        });
}