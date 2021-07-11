const { check, body, checkSchema } = require('express-validator');

exports.validate = () => {

    return checkSchema({
        'user.email': {
            isEmail: {
                errorMessage: 'invalid email',
            }
        },
        password: {
            isLength: {
                errorMessage: 'Password should be at least 8 chars long',
                options: { min: 8 },
            },
        },
        'user.mobileNumber': {
            isLength: {
                errorMessage: 'Mobile number should contains 10 digits',
                options: { min: 10, max: 10 },
            },
        },
        'user.firstName': {
            isLength: {
                errorMessage: 'First Name length should be 10 to 20 characters',
                options: { min: 5, max: 50 },
            },
        },
        'user.lastName': {
            isLength: {
                errorMessage: 'Last Name length should be 10 to 20 characters',
                options: { min: 5, max: 50 },
            },
        }
    });
}

exports.change_password_validate = () => {

    return checkSchema({
        'user.email': {
            isEmail: {
                errorMessage: 'invalid email',
            }
        },
        newPassword: {
            isLength: {
                errorMessage: 'Password should be at least 8 chars long',
                options: { min: 8 },
            },
        },
    });
}