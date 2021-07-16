const express = require('express');
const router = express.Router();
const OrdersController = require('../controller/orders');

router.post('/', OrdersController.orders_insert_order)

router.get('/:userId', OrdersController.orders_get_order_by_user_id)

router.get('/:orderId/details', OrdersController.orders_get_order_details_by_order_id)

module.exports = router;
// const express = require('express');
// const router = express.Router();

// const checkAuth = require('../middleware/check-auth');
// const OrdersController = require('../controller/orders');

// router.get('/', checkAuth, OrdersController.orders_get_all)

// router.post('/', checkAuth, OrdersController.orders_create_order)

// router.get('/:orderId', checkAuth, OrdersController.orders_get_order)

// router.delete('/:orderId', checkAuth, OrdersController.orders_delete_order)

// module.exports = router;