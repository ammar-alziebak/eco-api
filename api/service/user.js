const pool = require('../../config/database');

exports.user_signup = (data, callBack) => {

    pool.query(`insert into user(email, firstName, lastName, mobileNumber, password) values(?,?,?,?,?)`, [
            data.user.email,
            data.user.firstName,
            data.user.lastName,
            data.user.mobileNumber,
            data.password
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.user_login = (data, callBack) => {
    console.log('email:' + data.email);
    pool.query(`select * from user where email = ?`, [
            data.email
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.user_update = (data, callBack) => {

    pool.query(`update user set email = ?,
                                firstName = ?,
                                lastName = ?,
                                mobileNumber = ?,
                                dateOfBirth = ?,
                                gender = ?
                where id = ?`, [
            data.body.user.email,
            data.body.user.firstName,
            data.body.user.lastName,
            data.body.user.mobileNumber,
            data.body.user.dateOfBirth,
            data.body.user.gender,
            data.params.id,
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.user_delete = (data, callBack) => {

    pool.query(`delete from user where id = ?`, [
            data.id
        ],
        (error, result, fields) => {
            if (error) {
                console.log(error);
                return callBack(error);
            }
            return callBack(null, result)
        });
}


exports.user_change_password = (data, callBack) => {

    pool.query(`update user 
                set password = ?
                where email = ? `, [
            data.newPassword,
            data.user.email,
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}