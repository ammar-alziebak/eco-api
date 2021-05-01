const express = require('express');
const router = express.Router();
const multer = require('multer');
const checkAuth = require('../middleware/check-auth');

const ProductsController = require('../controller/products');

const storage = multer.diskStorage({
    destination: function(req, file, cb) {
        cb(null, 'uploads/');
    },
    filename: function(req, file, cb) {
        cb(null, file.originalname);
    }
});

const fileFilter = (req, file, cb) => {
    //reject a file
    if (file.mimetype === 'image/jpg' || file.mimetype === 'image/jpeg' || file.mimetype === 'image/png') {
        cb(null, true);
    } else {
        cb(null, false);
    }
};

const upload = multer({
    storage: storage,
    limits: {
        fieldSize: 1024 * 1024 * 5
    },
    fileFilter: fileFilter
})

const Product = require('../models/product');

router.get('/', ProductsController.products_get_all)

router.get('/keyword', ProductsController.products_get_prodcts_by_keyword)

router.post('/', checkAuth, upload.single('productImage'), ProductsController.products_create_product)

router.get('/:productId', ProductsController.products_get_product)

router.get('/:productId/variation', ProductsController.products_get_variation)

router.get('/:productId/options', ProductsController.products_get_variationOptions)

router.get('/:productId/details', ProductsController.products_get_variationDetails)

router.get('/:productId/images', ProductsController.product_get_images)

router.get('/:firstName/:lastName', ProductsController.product_get_categories)


// router.patch('/:productId', checkAuth, ProductsController.products_update_product)

// router.delete('/:productId', checkAuth, ProductsController.products_delete_product)

module.exports = router;