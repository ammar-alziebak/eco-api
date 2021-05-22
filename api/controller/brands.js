const Brands = require('../service/brands')

exports.get_all_brands = (req, res, next) => {

    Brands.get_all_brands(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get all brands",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get all Brands Successfully',
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
exports.brands_get_brand = (req, res, next) => {

    Brands.brands_get_brand(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get brand",
                error: err
            });
        }
        if (result) {
            res.status(200).json({
                item: result[0]
            });
        } else {
            res.status(404).json({ message: 'Brand not found' });
        }
    })
}