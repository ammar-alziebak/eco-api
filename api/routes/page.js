const express = require('express');
const router = express.Router();

const PageController = require('../controller/page');

router.get('/:pageCode', PageController.get_dynamic_page_by_code)

module.exports = router;