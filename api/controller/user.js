//const User = require('../models/user');
const bcrypt = require('bcrypt');
const jwt = require('jsonwebtoken')
const mongoose = require('mongoose');
const User = require('../service/user');
const { validationResult } = require('express-validator');

exports.user_signup = (req, res) => {

    // console.log(req.body.user);
    const errors = validationResult(req);

    if (!errors.isEmpty()) {
        console.log(errors);
        return res.status(400).json({
            success: false,
            errors: errors.array()
        });
    }

    const body = req.body;
    const salt = bcrypt.genSaltSync(10);
    body.password = bcrypt.hashSync(body.password, salt);
    User.user_signup(body, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when create user",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Create User Successfully',
            data: result
        });
    });
}

exports.user_login = (req, res, next) => {

    User.user_login(req.body, (err, user) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when user login",
                error: err
            });
        }
        if (user.length < 1) {
            console.log("user:" + user);
            return res
                .status(401)
                .json({ message: 'Auth failed' });
        } else {
            console.log("user[0].password:" + user[0].password);

            bcrypt.compare(req.body.password, user[0].password, (err, result) => {
                if (err) {
                    console.log(err);
                    return res
                        .status(401)
                        .json({ message: 'Auth failed' });
                }
                if (result) {

                    const token = jwt.sign({
                        email: user[0].email,
                        id: user[0].id
                    }, process.env.JWT_KEY, {
                        expiresIn: "1h"
                    });

                    console.log(result);
                    return res
                        .status(200)
                        .json({
                            message: 'Auth successful',
                            token: token,
                            user: user
                        });
                }
                res
                    .status(401)
                    .json({ message: 'Auth failed' });
            });
        }
    });
}

exports.users_update_user = (req, res) => {

    User.user_update(req, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when update user",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Update User Successfully',
            data: result
        });
    });
}

exports.users_delete_user = (req, res, next) => {

    User.user_delete(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when delete user"
            });
        }
        res.status(200).json({
            success: 1,
            message: 'Delete User Successfully',
            data: result
        });
    });
}

exports.user_change_password = (req, res) => {

    User.user_login(req.body.user, (err, user) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get user info",
                error: err
            });
        }
        if (user.length < 1) {
            console.log("user:" + user);
            res.status(401)
                .json({
                    success: 0,
                    message: 'Auth failed'
                });
        } else {
            bcrypt.compare(req.body.currentPassword, user[0].password, (err, result) => {
                if (err) {
                    console.log(err);
                    res.status(401)
                        .json({ message: 'Auth failed' });
                }
                if (result) {

                    const body = req.body;
                    const salt = bcrypt.genSaltSync(10);
                    body.newPassword = bcrypt.hashSync(body.newPassword, salt);
                    User.user_change_password(body, (err, result) => {
                        if (err) {
                            console.log(err);
                            res.status(500).json({
                                success: 0,
                                message: "error when update user password",
                                error: err
                            });
                        }
                        res.status(201).json({
                            success: 1,
                            message: 'Update user password successfully',
                            data: result
                        });
                    });
                } else {
                    res.status(401).json({ success: 0, message: 'Auth failed' });
                }
            });
        }
    });
}

// exports.user_signup = (req, res, next) => {

//     User
//         .find({ email: req.body.email })
//         .exec()
//         .then(user => {

//             if (user.length >= 1) {
//                 return res.status(409).json({
//                     message: 'Email already exist'
//                 });
//             } else {
//                 bcrypt.hash(req.body.password, 10, (err, hash) => {
//                     if (err) {
//                         res.status(500).json({
//                             error: err
//                         });
//                     } else {

//                         const user = new User({
//                             _id: new mongoose.Types.ObjectId,
//                             email: req.body.email,
//                             password: hash
//                         });

//                         user
//                             .save()
//                             .then(result => {
//                                 console.log(result);
//                                 res.status(201).json({
//                                     message: 'Created User successfully'
//                                 });
//                             })
//                             .catch(err => {
//                                 console.log(err);
//                                 res.status(500).json({
//                                     error: err
//                                 });
//                             });;
//                     }
//                 });
//             }
//         });
// }

// exports.user_login = (req, res, next) => {
//     User
//         .find({ email: req.body.email })
//         .exec()
//         .then(user => {
//             if (user.length < 1) {
//                 return res
//                     .status(401)
//                     .json({ message: 'Auth failed' });
//             }

//             bcrypt.compare(req.body.password, user[0].password, (err, result) => {
//                 if (err) {
//                     console.log(err);
//                     return res
//                         .status(401)
//                         .json({ message: 'Auth failed' });
//                 }
//                 if (result) {

//                     const token = jwt.sign({
//                         email: user[0].email,
//                         id: user[0]._id
//                     }, process.env.JWT_KEY, {
//                         expiresIn: "1h"
//                     });

//                     console.log(result);
//                     return res
//                         .status(200)
//                         .json({
//                             message: 'Auth successful',
//                             token: token
//                         });
//                 }
//                 res
//                     .status(401)
//                     .json({ message: 'Auth failed' });
//             });
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({
//                 error: err
//             });
//         });
// }


// exports.users_delete_user = (req, res, next) => {
//     const id = req.params.id;
//     User
//         .deleteOne({ _id: id })
//         .exec()
//         .then(result => {
//             res.status(200).json({
//                 message: 'User deleted'
//             });
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({ message: 'error when delete user' });
//         });
//}