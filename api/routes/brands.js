const express = require('express');
const router = express.Router();

const BrandsController = require('../controller/brands');

router.get('/', BrandsController.get_all_brands)

module.exports = router;