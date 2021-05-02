const pool = require('../../config/database');
const { v1: uuidv1 } = require('uuid');
const { json } = require('body-parser');

exports.get_cart_and_cartitem = (data, callBack) => {

    pool.query(`SELECT * FROM cart WHERE userId =?; 
                SELECT cart_items.*, 
                product.name productName,
                product.productImage,
                product.price productPrice,
                product.discount productDiscount,
                product.discount productStock,
                variation_details.id variationDetailsId,
                variation_details.price variationDetailsPrice,
                variation_details.stock variationDetailsStock,
                variation_details.variation1Id,
                variation_options1.name variation1Name,
                variation_details.variation2Id,
                (SELECT variation_options.NAME FROM variation_options WHERE variation_options.id = variation_details.variation2Id) variation2Name
                FROM cart 
                INNER JOIN cart_items ON cart.id = cart_items.cartId 
                LEFT JOIN product ON product.id = cart_items.productId 
                LEFT JOIN variation_details ON variation_details.id = cart_items.variationDetailsId 
                LEFT JOIN variation_options variation_options1 ON variation_options1.id = variation_details.variation1Id 
                LEFT JOIN variation_options variation_options2 ON variation_options2.id = variation_details.variation2Id 
                WHERE cart.userId =?;`, [
            data.userId,
            data.userId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.get_create_user_cart = (data, callBack) => {

    pool.query(`select * from cart where userId = ?`, [
            data.userId
        ],
        (error, result, fields) => {
            if (error) {
                console.log(error);
                return callBack(error);
            }
            if (result.length < 1) {

                const id = uuidv1();
                pool.query(`INSERT INTO cart (id, userId) values(?,?)`, [
                        id,
                        data.userId
                    ],
                    (error, result, fields) => {
                        if (error) {
                            return callBack(error);
                        }

                        pool.query(`select * from cart where userId = ?;`, [
                            data.userId
                        ], (error, result, fields) => {
                            if (error) {
                                return callBack(error);
                            }
                            return callBack(null, result)
                        });
                    });
            } else {
                return callBack(null, result)
            }
        });
}

exports.cart_delete_cartitem = (data, callBack) => {

    pool.query(`delete from cart_items where id = ?`, [
            data.id
        ],
        (error, result, fields) => {
            if (error) {
                console.log(error);
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.cart_add_edit_cartitem = (data, callBack) => {

    let cartitem = data.body;
    console.log("---->" + cartitem.variationDetailsId);
    if (typeof cartitem.variationDetailsId !== 'undefined') {
        pool.query(`select count(*) count from cart_items where cartId = ? and productId = ? and variationDetailsId = ?`, [
                cartitem.cartId,
                cartitem.productId,
                cartitem.variationDetailsId
            ],
            (error, result, fields) => {
                if (error) {
                    return callBack(error);
                }

                if (result[0].count < 1) {
                    const id = uuidv1();
                    pool.query(`INSERT INTO cart_items (id, cartId, productId, variationDetailsId, quantity) values(?,?,?,?,?)`, [
                            id,
                            cartitem.cartId,
                            cartitem.productId,
                            cartitem.variationDetailsId,
                            cartitem.quantity
                        ],
                        (error, result, fields) => {
                            if (error) {
                                return callBack(error);
                            }
                            return callBack(null, result)
                        });

                } else {

                    pool.query(`update cart_items 
                            set quantity = quantity+?
                                where cartId = ? and 
                                productId = ? and 
                                variationDetailsId = ?;`, [
                            cartitem.quantity,
                            cartitem.cartId,
                            cartitem.productId,
                            cartitem.variationDetailsId
                        ],
                        (error, result, fields) => {
                            if (error) {
                                return callBack(error);
                            }
                            return callBack(null, result)
                        });
                }
            });
    } else {
        pool.query(`select count(*) count from cart_items where cartId = ? and productId = ?`, [
                cartitem.cartId,
                cartitem.productId
            ],
            (error, result, fields) => {
                if (error) {
                    return callBack(error);
                }

                if (result[0].count < 1) {
                    const id = uuidv1();
                    pool.query(`INSERT INTO cart_items (id, cartId, productId, quantity) values(?,?,?,?)`, [
                            id,
                            cartitem.cartId,
                            cartitem.productId,
                            cartitem.quantity
                        ],
                        (error, result, fields) => {
                            if (error) {
                                return callBack(error);
                            }
                            return callBack(null, result)
                        });

                } else {

                    pool.query(`update cart_items 
                            set quantity = quantity+?
                                where cartId = ? and 
                                productId = ?;`, [
                            cartitem.quantity,
                            cartitem.cartId,
                            cartitem.productId
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

}

exports.cartitem_update_quantity = (data, callBack) => {

    let cartitem = data.body;
    pool.query(`update cart_items 
                set quantity = ?
                    where id  = ?;`, [
            cartitem.quantity,
            cartitem.id
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });

}

exports.cartitem_update_variation_details = (data, callBack) => {

    let cartitem = data.body;
    pool.query(`update cart_items 
                set variationDetailsId = ?
                    where id  = ?;`, [
            cartitem.variationDetailsId,
            cartitem.id
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });

}

exports.cartitem_get_count = (data, callBack) => {

    pool.query(`SELECT COUNT(*) count 
                FROM cart_items INNER JOIN cart ON cart_items.cartId = cart.id
                and cart.userId = ?;`, [
            data.userId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}