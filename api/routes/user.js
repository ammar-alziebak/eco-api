const express = require('express');
const router = express.Router();
//const checkAuth = require('../middleware/check-auth');
const { body, checkSchema } = require('express-validator');
const { validate } = require('../validation/user')
const UserController = require('../controller/user');
const checkAuth = require('../middleware/check-auth');

router.post('/signup',
    validate(),
    UserController.user_signup)

router.post('/login', UserController.user_login);

router.delete('/:id', UserController.users_delete_user)

router.put('/:id', checkAuth, UserController.users_update_user)

//router.post('/signup', UserController.user_signup);
// router.post('/login', UserController.user_login);

// router.delete('/:id', checkAuth, UserController.users_delete_user)

module.exports = router;