const express = require('express');
const router = express.Router();

const CategoriesController = require('../controller/categories');

router.get('/', CategoriesController.get_all_categories)

module.exports = router;