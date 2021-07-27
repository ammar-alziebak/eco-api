const express = require('express');
const router = express.Router();

const WishlistController = require('../controller/wishlist');

router.get('/:userId', WishlistController.wishlist_get_user_wish_products)

router.get('/wishlistCount/:userId', WishlistController.wishlist_get_count)

router.post('/', WishlistController.wishlist_add_remove_wish_product)

module.exports = router;