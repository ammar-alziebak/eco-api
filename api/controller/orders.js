const Order = require('../service/order');

exports.orders_insert_order = (req, res) => {
    const body = req.body;
    Order.orders_insert_order(body, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when create order",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Create order successfully',
            data: result
        });
    });
}

exports.orders_get_order_by_user_id = (req, res, next) => {

    Order.orders_get_order_by_user_id(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get customer orders",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get customer orders Successfully',
                items: result
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

exports.orders_get_order_by_order_id = (req, res, next) => {

    Order.orders_get_order_by_order_id(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get order",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get order information Successfully',
                items: result
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

exports.orders_get_order_details_by_order_id = (req, res, next) => {

    Order.orders_get_order_details_by_order_id(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get order details",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get order details Successfully',
                items: result
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

// const Order = require('../models/order')
// const Product = require('../models/product');
// const mongoose = require('mongoose');

// exports.orders_get_all = (req, res, next) => {
//     Order
//         .find()
//         .select('_id product quantity')
//         .populate('product', '_id name price')
//         .exec()
//         .then(docs => {
//             console.log(docs);
//             const response = {
//                 count: docs.length,
//                 orders: docs.map(doc => {
//                     return {
//                         product: doc.product,
//                         quantity: doc.quantity,
//                         id: doc._id,
//                         request: {
//                             type: 'GET',
//                             url: `http://localhost:3000/orders/${doc._id}`
//                         }
//                     }
//                 })
//             }
//             res.status(200).json(response);
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({ message: err });
//         });
// }

// exports.orders_create_order = (req, res, next) => {

//     Product
//         .findById(req.body.productId)
//         .then(product => {

//             if (!product) {
//                 return res.status(404).json({
//                     message: 'Product not found'
//                 });
//             }

//             const order = new Order({
//                 _id: new mongoose.Types.ObjectId,
//                 quantity: req.body.quantity,
//                 product: req.body.productId
//             });

//             return order.save();

//         }).then(result => {
//             res.status(201).json({
//                 message: 'Created order successfully',
//                 createdOrder: {
//                     _id: result._id,
//                     product: result.product,
//                     quantity: result.quantity,
//                     request: {
//                         type: 'GET',
//                         url: `http://localhost:3000/orders/${result._id}`
//                     }
//                 }
//             });
//         })
//         .catch(err => {
//             res.status(500).json({
//                 error: err
//             });
//         });
// }

// exports.orders_get_order = (req, res, next) => {
//     const id = req.params.orderId;
//     Order
//         .findById(id)
//         .select('_id product quantity')
//         .exec()
//         .then(doc => {
//             console.log(doc);
//             if (doc) {
//                 res.status(200).json({
//                     order: doc,
//                     request: {
//                         type: 'GET',
//                         url: `http://localhost:3000/orders/`
//                     }
//                 });
//             } else {
//                 res.status(404).json({ message: 'Order not found' });
//             }
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({
//                 error: err
//             })
//         })
// }

// exports.orders_delete_order = (req, res, next) => {
//     const id = req.params.orderId;
//     Order
//         .deleteOne({ _id: id })
//         .exec()
//         .then(result => {
//             res.status(200).json({
//                 message: 'Order deleted',
//                 request: {
//                     type: 'POST',
//                     url: `http://localhost:3000/Orders/`,
//                     body: { productId: 'ID', quantity: 'Number' }
//                 }
//             });
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({ message: 'error when delete product' });
//         });
// }