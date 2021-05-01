const Categories = require('../service/categories')

exports.get_all_categories = (req, res, next) => {

    Categories.get_all_categories(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get all categories",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get all Categories Successfully',
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