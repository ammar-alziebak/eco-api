const pool = require('../../config/database');
const { v1: uuidv1 } = require('uuid');

exports.addresses_get_user_address = (data, callBack) => {

    pool.query({
        sql: `SELECT address.*, state.name stateName, area.name areaName
              FROM address
              LEFT JOIN state ON address.stateId = state.id
              LEFT JOIN area ON address.areaId = area.id
              WHERE userId = ?;`,
    }, [
        data.userId
    ], (error, result, fields) => {

        if (error) {
            return callBack(error);
        }

        return callBack(null, result)
    });
}

exports.addresses_get_state_area = (data, callBack) => {

    pool.query(`SELECT * FROM state; SELECT * FROM area;`,
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.addresses_delete_address = (data, callBack) => {

    pool.query(`delete from address where id = ?`, [
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

exports.addresses_set_address_as_default = (data, callBack) => {

    pool.query(`update address set isDefault = 0 where userId = ?;
                update address set isDefault = 1 where id = ?`, [
            data.body.userId,
            data.params.id,
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }
            return callBack(null, result)
        });
}

exports.addresses_add_edit_address = (data, callBack) => {

    let address = data.body;
    pool.query(`select count(*) from address where userId = ?`, [
            address.userId
        ],
        (error, result, fields) => {
            if (error) {
                return callBack(error);
            }

            if (result.length < 1 || typeof address.id === 'undefined') {
                const id = uuidv1();
                pool.query(`INSERT INTO address (id, fullName, phoneNumber, postalCode, stateId, areaId, description, userId, isDefault) values(?,?,?,?,?,?,?,?,?)`, [
                        id,
                        address.fullName,
                        address.phoneNumber,
                        address.postalCode,
                        address.stateId,
                        address.areaId,
                        address.description,
                        address.userId,
                        result.length < 1 ? 1 : 0
                    ],
                    (error, result, fields) => {
                        if (error) {
                            return callBack(error);
                        }
                        return callBack(null, result)
                    });

            } else {

                pool.query(`update address 
                            set fullName = ?,
                                phoneNumber = ?,
                                postalCode = ?,
                                stateId = ?,
                                areaId = ?,
                                description = ?,
                                userId = ?
                                where id = ?;`, [
                        address.fullName,
                        address.phoneNumber,
                        address.postalCode,
                        address.stateId,
                        address.areaId,
                        address.description,
                        address.userId,
                        address.id
                    ],
                    (error, result, fields) => {
                        if (error) {
                            return callBack(error);
                        }
                        return callBack(null, result)
                    });
            }
        });
}