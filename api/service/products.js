const pool = require('../../config/database');
const { v1: uuidv1 } = require('uuid');
const { version } = require('mongoose');

exports.products_get_all = (data, callBack) => {

    //console.log("11111111111");
    // console.log(data.pageIndex);
    // console.log(data.pageSize);
    pool.query({
        sql: `SELECT count(*) totalCount
                FROM product 
                LEFT JOIN made_in ON product.madeInId = made_in.id
                LEFT JOIN warranty_period ON product.warrantyPeriodId = warranty_period.id
                LEFT JOIN categories ON product.categoryId = categories.id
                LEFT JOIN brand ON product.brandId = brand.id
                LEFT JOIN currency_symbol ON product.currencySymbolId = currency_symbol.id;
              SELECT product.*,made_in.name madeInName,warranty_period.name warrantyPeriodName,categories.name categoryName,brand.name brandName,currency_symbol.name currencySymbolName
                FROM product 
                LEFT JOIN made_in ON product.madeInId = made_in.id
                LEFT JOIN warranty_period ON product.warrantyPeriodId = warranty_period.id
                LEFT JOIN categories ON product.categoryId = categories.id
                LEFT JOIN brand ON product.brandId = brand.id
                LEFT JOIN currency_symbol ON product.currencySymbolId = currency_symbol.id LIMIT ?, ?;`,
        timeout: 60000
    }, [
        parseInt(data.pageIndex),
        parseInt(data.pageSize)
    ], (error, result, fields) => {

        if (error && error.code === 'PROTOCOL_SEQUENCE_TIMEOUT') {
            throw new Error('too long to count table rows!');
        }

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}

exports.products_get_variation = (data, callBack) => {

    pool.query(`SELECT variation.* FROM variation WHERE productId = ?`, [
            data.productId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.products_get_variationOptions = (data, callBack) => {

    pool.query(`SELECT variation_options.* FROM variation_options INNER JOIN variation ON variation_options.variationId = variation.id
                WHERE productId =?`, [
            data.productId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.products_get_variationDetails = (data, callBack) => {

    pool.query(`SELECT variation_details.* FROM variation_details WHERE productId =?`, [
            data.productId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.products_create_product = (data, callBack) => {

    const id = uuidv1();
    pool.query(`insert into product(id, name, price, productImage) values(?,?,?,?)`, [
            id,
            data.name,
            data.price,
            data.productImage,
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, {
                id: id,
                name: result.name,
                price: result.price,
                productImage: result.productImage,
            })
        });
}

exports.products_get_product = (data, callBack) => {

    pool.query(`SELECT product.*,made_in.name madeInName,warranty_period.name warrantyPeriodName,categories.name categoryName,brand.name brandName,currency_symbol.name currencySymbolName
                FROM product 
                LEFT JOIN made_in ON product.madeInId = made_in.id
                LEFT JOIN warranty_period ON product.warrantyPeriodId = warranty_period.id
                LEFT JOIN categories ON product.categoryId = categories.id
                LEFT JOIN brand ON product.brandId = brand.id
                LEFT JOIN currency_symbol ON product.currencySymbolId = currency_symbol.id 
                WHERE product.id = ?
                LIMIT 1`, [
            data.productId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.product_get_images = (data, callBack) => {

    pool.query(`SELECT * FROM product_images WHERE productId = ?`, [
            data.productId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.product_get_categories = (data, callBack) => {

    pool.query(`SELECT t1.name AS lev1, t2.name as lev2, t3.name as lev3, t4.name as lev4
                FROM categories AS t1
                LEFT JOIN categories AS t2 ON t2.parentid = t1.id
                LEFT JOIN categories AS t3 ON t3.parentid = t2.id
                LEFT JOIN categories AS t4 ON t4.parentid = t3.id
                WHERE t1.name = ? AND t4.name like '%' ? '%';`, [
            data.firstName,
            data.lastName,
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            if (result.length < 1) {
                pool.query(`SELECT t1.name AS lev1, t2.name as lev2, t3.name as lev3, t4.name as lev4
                            FROM categories AS t1
                            LEFT JOIN categories AS t2 ON t2.parentid = t1.id
                            LEFT JOIN categories AS t3 ON t3.parentid = t2.id
                            LEFT JOIN categories AS t4 ON t4.parentid = t3.id
                            WHERE t1.name = ? AND t3.name = ?;`, [
                        data.firstName,
                        data.lastName,
                    ],
                    (error, result, fields) => {
                        if (error) {
                            return callBack(error);
                        }
                        if (result.length < 1) {
                            pool.query(`SELECT t1.name AS lev1, t2.name as lev2, t3.name as lev3, t4.name as lev4
                                        FROM categories AS t1
                                        LEFT JOIN categories AS t2 ON t2.parentid = t1.id
                                        LEFT JOIN categories AS t3 ON t3.parentid = t2.id
                                        LEFT JOIN categories AS t4 ON t4.parentid = t3.id
                                        WHERE t1.name = ? AND t2.name = ?;`, [
                                    data.firstName,
                                    data.lastName,
                                ],
                                (error, result, fields) => {
                                    if (error) {
                                        return callBack(error);
                                    }
                                    return callBack(null, result)
                                });
                        } else {
                            return callBack(null, result)
                        }
                    });
            } else {
                return callBack(null, result)
            }
        });
}

exports.products_get_prodcts_by_keyword = (data, callBack) => {

    var dbCountQuery = `SELECT count(*) totalCount
                        FROM product
                        LEFT JOIN made_in ON product.madeInId = made_in.id
                        LEFT JOIN warranty_period ON product.warrantyPeriodId = warranty_period.id
                        LEFT JOIN categories ON product.categoryId = categories.id
                        LEFT JOIN brand ON product.brandId = brand.id
                        LEFT JOIN currency_symbol ON product.currencySymbolId = currency_symbol.id
                        WHERE 1=1`;

    if (data.keyword != null) {
        dbCountQuery += ` AND product.name like '%'  ${pool.escape(data.keyword)} '%' `;
    }

    if (data.brandId != null) {
        dbCountQuery += ` AND brand.id in ( ${data.brandId} )`;
    }

    if (data.categoryId != null) {
        dbCountQuery += ` AND categories.id in ( ${data.categoryId} )`;
    }

    if (data.conditionId != null) {
        dbCountQuery += ` AND product.conditionValue in ( ${data.conditionId} )`;
    }

    var dbQuery = `SELECT product.*,made_in.name madeInName,warranty_period.name warrantyPeriodName,categories.name categoryName,brand.name brandName,currency_symbol.name currencySymbolName
                    FROM product 
                    LEFT JOIN made_in ON product.madeInId = made_in.id
                    LEFT JOIN warranty_period ON product.warrantyPeriodId = warranty_period.id
                    LEFT JOIN categories ON product.categoryId = categories.id
                    LEFT JOIN brand ON product.brandId = brand.id
                    LEFT JOIN currency_symbol ON product.currencySymbolId = currency_symbol.id WHERE 1=1 `;

    if (data.keyword != null) {
        dbQuery += ` AND product.name like '%'  ${pool.escape(data.keyword)} '%' `;
    }

    if (data.brandId != null) {
        dbQuery += ` AND brand.id in ( ${data.brandId} )`;
    }

    if (data.categoryId != null) {
        dbQuery += ` AND categories.id in ( ${data.categoryId} )`;
    }

    if (data.conditionId != null) {
        dbQuery += ` AND product.conditionValue in ( ${data.conditionId} )`;
    }

    dbQuery += ` LIMIT  ${parseInt(data.pageSize)} OFFSET ${pool.escape((parseInt(data.pageIndex) * parseInt(data.pageSize)))};`

    pool.query({
        sql: `${dbCountQuery};${dbQuery}`,
        timeout: 60000
    }, (error, result, fields) => {

        if (error && error.code === 'PROTOCOL_SEQUENCE_TIMEOUT') {
            throw new Error('too long to count table rows!');
        }

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}