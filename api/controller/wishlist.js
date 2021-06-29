const Wishlist = require('../service/wishlist')

exports.wishlist_get_user_wish_products = (req, res, next) => {

    Wishlist.wishlist_get_user_wish_products(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get all wishlist for user",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get all Wishlist for user Successfully',
                totalCount: result.length,
                items: result
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

exports.wishlist_add_remove_wish_product = (req, res) => {

    Wishlist.wishlist_add_remove_wish_product(req, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when add/delete wishlist",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Add/Delete Wishlist Successfully',
            data: result
        });
    });
}