const express = require('express');
const router = express.Router();

const PaymentController = require('../controller/payment');

router.get('/paymentMethods', PaymentController.payment_get_payment_methods)

router.get('/transferCompanies', PaymentController.payment_get_transfer_companies)

module.exports = router;