const Page = require('../service/page')

exports.get_dynamic_page_by_code = (req, res, next) => {

    Page.get_dynamic_page_by_code(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get dynamic page",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get dynamic page successfully',
                totalCount: result.length,
                items: result[0]
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}