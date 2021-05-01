const Address = require('../service/address')

exports.addresses_get_user_address = (req, res, next) => {

    Address.addresses_get_user_address(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get all address",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get all Addresses Successfully',
                totalCount: result.length,
                items: result
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

exports.addresses_get_state_area = (req, res, next) => {

    Address.addresses_get_state_area(req.body, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get all state and area",
                error: err
            });
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get all State and Area Successfully',
                state: result[0],
                area: result[1]
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

exports.addresses_delete_address = (req, res, next) => {

    Address.addresses_delete_address(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when delete address"
            });
        }
        res.status(200).json({
            success: 1,
            message: 'Delete Address Successfully',
            data: result
        });
    });
}

exports.addresses_set_address_as_default = (req, res) => {

    Address.addresses_set_address_as_default(req, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when update address",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Update Address Successfully',
            data: result
        });
    });
}

exports.addresses_add_edit_address = (req, res) => {

    Address.addresses_add_edit_address(req, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when add/update address",
                error: err
            });
        }
        res.status(201).json({
            success: 1,
            message: 'Add/Update Address Successfully',
            data: result
        });
    });
}