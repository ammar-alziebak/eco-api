const Cart = require('../service/cart');

exports.get_cart_and_cartitem = (req, res, next) => {

    Cart.get_cart_and_cartitem(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get cart and cart items",
                error: err
            });
        }
        console.log(result[1]);
        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get user cart and cart items Successfully',
                cart: result[0],
                cartItems: result[1]
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

exports.get_create_user_cart = (req, res, next) => {

    Cart.get_create_user_cart(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get/create user cart",
                error: err
            });
        }

        if (result.length >= 1) {
            console.log(result);

            res.status(200).json({
                success: 1,
                message: 'Get user cart Successfully',
                cart: result
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

exports.cart_delete_cartitem = (req, res, next) => {

    Cart.cart_delete_cartitem(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when delete cart item"
            });
        }
        res.status(200).json({
            success: 1,
            message: 'Delete Cart Item Successfully',
            data: result
        });
    });
}

exports.cart_add_edit_cartitem = (req, res) => {

    Cart.cart_add_edit_cartitem(req, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when add/update cartitem",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Add/Update Cartitem Successfully',
            data: result
        });
    });
}

exports.cartitem_update_quantity = (req, res) => {

    Cart.cartitem_update_quantity(req, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when update cartitem quantity",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Update Cartitem Quantity Successfully',
            data: result
        });
    });
}

exports.cartitem_update_variation_details = (req, res) => {

    Cart.cartitem_update_variation_details(req, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when update cartitem variation details",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Update Cartitem Variation Details Successfully',
            data: result
        });
    });
}

exports.cartitem_get_count = (req, res, next) => {

    Cart.cartitem_get_count(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get cart items count",
                error: err
            });
        }

        console.log(result);
        res.status(200).json({
            success: 1,
            message: 'Get cart items count Successfully',
            itemCount: result[0].count
        });
    });
}