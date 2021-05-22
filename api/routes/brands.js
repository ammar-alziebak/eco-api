const express = require('express');
const router = express.Router();

const BrandsController = require('../controller/brands');

router.get('/', BrandsController.get_all_brands)

router.get('/:brandId', BrandsController.brands_get_brand)

module.exports = router;