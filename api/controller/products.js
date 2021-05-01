const Product = require('../service/products')

exports.products_get_all = (req, res, next) => {

    Product.products_get_all(req.query, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get all products",
                error: err
            });
        }

        const response = {
            totalCount: result[0].map(r => {
                return r.totalCount
            }),
            items: result[1].map(r => {
                return {
                    id: r.id,
                    name: r.name,
                    productNo: r.productNo,
                    description: r.description,
                    price: r.price,
                    usdPrice: r.usdPrice,
                    discount: r.discount,
                    madeInId: r.madeInId,
                    madeInName: r.madeInName,
                    concitionValue: r.concitionValue,
                    warrantyPeriodId: r.warrantyPeriodId,
                    warrantyPeriodName: r.warrantyPeriodName,
                    categoryId: r.categoryId,
                    categoryName: r.categoryName,
                    brandId: r.brandId,
                    breadcrumb: r.breadcrumb,
                    brandName: r.brandName,
                    productImage: r.productImage,
                    expiryDate: r.expiryDate,
                    request: {
                        type: 'GET',
                        url: `http://localhost:3000/products/${r.id}`
                    }
                }
            })
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get all products Successfully',
                totalCount: response.totalCount,
                items: response.items
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

exports.products_create_product = (req, res, next) => {

    Product.products_create_product(req.body, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when create product",
                error: err
            });
        }

        res.status(201).json({
            success: 1,
            message: 'Create Product Successfully',
            createdProduct: {
                name: result.name,
                price: result.price,
                id: result.id,
                request: {
                    type: 'GET',
                    url: `http://localhost:3000/products/${result.id}`
                }
            }
        });
    });
}

exports.products_get_product = (req, res, next) => {

    Product.products_get_product(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get product",
                error: err
            });
        }
        if (result) {
            res.status(200).json({
                item: result[0] //,
                    // request: {
                    //     type: 'GET',
                    //     url: `http://localhost:3000/products/`
                    // }
            });
        } else {
            res.status(404).json({ message: 'Product not found' });
        }
    })
}

exports.products_get_variation = (req, res, next) => {

    Product.products_get_variation(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get variation",
                error: err
            });
        }
        if (result) {
            console.log(result);
            res.status(200).json({
                items: result,
                totalCount: result.length,
            });
        } else {
            res.status(404).json({ message: 'Variation not found' });
        }
    })
}

exports.products_get_variationOptions = (req, res, next) => {

    Product.products_get_variationOptions(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get variation options",
                error: err
            });
        }
        if (result) {
            res.status(200).json({
                items: result,
                totalCount: result.length,
            });
        } else {
            res.status(404).json({ message: 'variation options not found' });
        }
    })
}

exports.products_get_variationDetails = (req, res, next) => {

    Product.products_get_variationDetails(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get variation details",
                error: err
            });
        }
        if (result) {
            res.status(200).json({
                items: result,
                totalCount: result.length,
            });
        } else {
            res.status(404).json({ message: 'Variation details not found' });
        }
    })
}

exports.product_get_images = (req, res, next) => {

    Product.product_get_images(req.params, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get images",
                error: err
            });
        }
        if (result) {
            res.status(200).json({
                items: result,
                totalCount: result.length,
            });
        } else {
            res.status(404).json({ message: 'Images not found' });
        }
    })
}

exports.product_get_categories = (req, res, next) => {

    Product.product_get_categories(req.params, (err, result) => {

        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get categories",
                error: err
            });
        }
        if (result) {
            res.status(200).json({
                items: result,
                totalCount: result.length
            });
        } else {
            res.status(404).json({ message: 'Images not found' });
        }
    })
}

exports.products_get_prodcts_by_keyword = (req, res, next) => {

    Product.products_get_prodcts_by_keyword(req.query, (err, result) => {
        if (err) {
            console.log(err);
            res.status(500).json({
                success: 0,
                message: "error when get products by keyword",
                error: err
            });
        }

        const response = {
            totalCount: result[0].map(r => {
                return r.totalCount
            }),
            items: result[1].map(r => {
                return {
                    id: r.id,
                    name: r.name,
                    productNo: r.productNo,
                    description: r.description,
                    price: r.price,
                    usdPrice: r.usdPrice,
                    discount: r.discount,
                    madeInId: r.madeInId,
                    madeInName: r.madeInName,
                    concitionValue: r.concitionValue,
                    warrantyPeriodId: r.warrantyPeriodId,
                    warrantyPeriodName: r.warrantyPeriodName,
                    categoryId: r.categoryId,
                    categoryName: r.categoryName,
                    brandId: r.brandId,
                    breadcrumb: r.breadcrumb,
                    brandName: r.brandName,
                    productImage: r.productImage,
                    expiryDate: r.expiryDate,
                    request: {
                        type: 'GET',
                        url: `http://localhost:3000/products/${r.id}`
                    }
                }
            })
        }

        if (result.length >= 1) {
            res.status(200).json({
                success: 1,
                message: 'Get all products by keyword Successfully',
                totalCount: response.totalCount,
                items: response.items
            });
        } else {
            res.status(404).json({
                message: 'No entries found'
            });
        }
    });
}

// const Product = require('../models/product');
// const mongoose = require('mongoose');

// exports.products_get_all = (req, res, next) => {
//     Product
//         .find()
//         .select('_id name price productImage')
//         .exec()
//         .then(docs => {
//             console.log(docs);
//             const response = {
//                 count: docs.length,
//                 produsts: docs.map(doc => {
//                     return {
//                         name: doc.name,
//                         price: doc.price,
//                         productImage: doc.productImage,
//                         id: doc._id,
//                         request: {
//                             type: 'GET',
//                             url: `http://localhost:3000/products/${doc._id}`
//                         }
//                     }
//                 })
//             }
//             // if (docs.length >= 1) {
//             res.status(200).json(response);
//             // }else{
//             //     res.status(404).json({
//             //         message: 'No entries found'
//             //     });
//             // }
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({ message: err });
//         });
// }

// exports.products_create_product = (req, res, next) => {
//     console.log(req.file);
//     const product = new Product({
//         _id: new mongoose.Types.ObjectId(),
//         name: req.body.name,
//         price: req.body.price,
//         productImage: req.file.path
//     });

//     product
//         .save()
//         .then(result => {
//             console.log(result);
//             res.status(201).json({
//                 message: 'Created product successfully',
//                 createdProduct: {
//                     name: result.name,
//                     price: result.price,
//                     _id: result._id,
//                     request: {
//                         type: 'GET',
//                         url: `http://localhost:3000/products/${result._id}`
//                     }
//                 }
//             });
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({
//                 error: err
//             })
//         });
// }

// exports.products_get_product = (req, res, next) => {
//     const id = req.params.productId;
//     Product
//         .findById(id)
//         .select('_id name price productImage')
//         .exec()
//         .then(doc => {
//             console.log(doc);
//             if (doc) {
//                 res.status(200).json({
//                     product: doc,
//                     request: {
//                         type: 'GET',
//                         url: `http://localhost:3000/products/`
//                     }
//                 });
//             } else {
//                 res.status(404).json({ message: 'Product not found' });
//             }
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({
//                 error: err
//             })
//         })
// }

// exports.products_update_product = (req, res, next) => {
//     const id = req.params.productId;
//     const updateOps = {};
//     for (const ops of req.body) {
//         updateOps[ops.propName] = ops.value;
//     }

//     Product.
//         updateOne({ _id: id }, { $set: updateOps })
//         .exec()
//         .then(result => {
//             res.status(200).json({
//                 message: 'Product updated',
//                 request: {
//                     type: 'GET',
//                     url: `http://localhost:3000/products/${id}`
//                 }
//             });
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({
//                 error: err
//             });
//         });
// }

// exports.products_delete_product = (req, res, next) => {
//     const id = req.params.productId;
//     Product
//         .deleteOne({ _id: id })
//         .exec()
//         .then(result => {
//             res.status(200).json({
//                 message: 'Product deleted',
//                 request: {
//                     type: 'POST',
//                     url: `http://localhost:3000/products/`,
//                     body: { name: 'String', price: 'Number' }
//                 }
//             });
//         })
//         .catch(err => {
//             console.log(err);
//             res.status(500).json({ message: 'error when delete product' });
//         });
// }