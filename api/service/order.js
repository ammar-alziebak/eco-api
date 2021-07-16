const pool = require('../../config/database');

exports.orders_insert_order = (data, callBack) => {

    var values = [];
    data.orderDetails.forEach(element => {
        var subArray = [element.id, element.orderId, element.productId, element.variationDetailsId, element.originalPrice, element.salePrice, element.qty, element.status];
        console.log(subArray);
        values.push(subArray);
    });
    /* Begin transaction */
    pool.beginTransaction(function(err) {
        if (err) { throw err; }
        pool.query(`insert into orders(id, status, subtotal, shippingFee, total, paymentMethod, orderDate, paymentDate, shipDate, completedDate, shippingInformation, deliveryAddress,customerId, customerMessage) 
                    values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)`, [
            data.order.id,
            data.order.status,
            data.order.subtotal,
            data.order.shippingFee,
            data.order.total,
            data.order.paymentMethod,
            data.order.orderDate,
            data.order.paymentDate,
            data.order.shipDate,
            data.order.completedDate,
            data.order.shippingInformation,
            data.order.deliveryAddress,
            data.order.customerId,
            data.order.customerMessage
        ], function(error, result) {
            if (error) {
                pool.rollback(function() {
                    throw error;
                });
            }

            pool.query(`insert into order_details(id, orderId, productId, variationDetailsId, originalPrice, salePrice, qty, status) 
                        values ?`, [values], function(error, result) {
                if (error) {
                    pool.rollback(function() {
                        throw error;
                    });
                }
                pool.commit(function(error) {
                    if (error) {
                        pool.rollback(function() {
                            throw error;
                        });
                    }
                    console.log('Transaction Completed Successfully.');
                    // pool.end();
                });
            });
        });
    });
    /* End transaction */

}

exports.orders_get_order_by_user_id = (data, callBack) => {

    pool.query(`SELECT * FROM orders WHERE customerId =?;`, [
            data.userId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.orders_get_order_details_by_order_id = (data, callBack) => {

    pool.query(`SELECT * FROM order_details WHERE orderId =?;`, [
            data.orderId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}