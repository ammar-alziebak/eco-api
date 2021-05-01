const express = require('express');
const router = express.Router();

const AddressController = require('../controller/address');

router.get('/state', AddressController.addresses_get_state_area)

router.get('/:userId', AddressController.addresses_get_user_address)

router.put('/:id', AddressController.addresses_set_address_as_default)

router.post('/', AddressController.addresses_add_edit_address)

router.delete('/:id', AddressController.addresses_delete_address)

module.exports = router;