const express = require('express');
const router = express.Router();
//const checkAuth = require('../middleware/check-auth');
const { body, checkSchema } = require('express-validator');
const { validate, change_password_validate } = require('../validation/user')
const UserController = require('../controller/user');
const checkAuth = require('../middleware/check-auth');

router.post('/signup',
    validate(),
    UserController.user_signup)

router.post('/login', UserController.user_login);

router.put('/changepassword', change_password_validate(), checkAuth, UserController.user_change_password)

router.delete('/:id', UserController.users_delete_user)

router.put('/:id', checkAuth, UserController.users_update_user)

//router.post('/signup', UserController.user_signup);
// router.post('/login', UserController.user_login);

// router.delete('/:id', checkAuth, UserController.users_delete_user)

module.exports = router;