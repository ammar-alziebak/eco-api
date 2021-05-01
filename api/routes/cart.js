const express = require('express');
const router = express.Router();

const CartController = require('../controller/cart');

router.get('/:userId', CartController.get_cart_and_cartitem)

router.get('/cartitemCount/:userId', CartController.cartitem_get_count)

router.post('/:userId', CartController.get_create_user_cart)

router.put('/cartitem', CartController.cart_add_edit_cartitem)

router.put('/cartitem/quantity', CartController.cartitem_update_quantity)

router.put('/cartitem/variation_details', CartController.cartitem_update_variation_details)

router.delete('/cartitem/:id', CartController.cart_delete_cartitem)

module.exports = router;