const express = require('express');
const app = express();
const morgan = require('morgan');
const bodyParser = require('body-parser')
const mongoose = require('mongoose');

const productRoutes = require('./api/routes/products');
const orderRoutes = require('./api/routes/orders');
const userRoutes = require('./api/routes/user');
const addressRoutes = require('./api/routes/address');
const cartRoutes = require('./api/routes/cart');
const brandRoutes = require('./api/routes/brands');
const categoryRoutes = require('./api/routes/categories');
// mongoose.connect('mongodb+srv://ammar:' + process.env.MONGO_ATLAS_PW + '@cluster0.nvxrt.mongodb.net/myFirstDatabase?retryWrites=true&w=majority', {
//     useNewUrlParser: true,
//     useUnifiedTopology: true
// });

// mongoose.Promise = global.Promise;

app.use(morgan('dev'));
app.use('/uploads', express.static('uploads'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
//app.use(express.static(path.join(__dirname,'uploads')));
app.use((req, res, next) => {

    // Website you wish to allow to connect
    res.header('Access-Control-Allow-Origin', '*');

    // Request headers you wish to allow
    res.header('Access-Control-Allow-Headers', 'https://tm-eco-93397.web.app');
    res.header('Access-Control-Allow-Headers', 'Origin, X-Requested-With, Content-Type, Accept, Authorization');

    if (req.method === 'OPTIONS') {
        // Request methods you wish to allow
        res.header('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');
        return res.status(200).json({});
    }

    // Pass to next layer of middleware
    next();
})

// app.use((error, req, res, next) => {
//     res.status(error.status || 500);
//     res.json({
//         error: { message: error.message }
//     })
// })

app.use('/cart', cartRoutes);
app.use('/products', productRoutes);
//app.use('/orders', orderRoutes);
app.use('/user', userRoutes);
app.use('/addresses', addressRoutes);
app.use('/brand', brandRoutes);
app.use('/categories', categoryRoutes);


// app.use((req, res, next) => {
//     res.status(200).json({
//         message: "it's work!"
//     });
// });

module.exports = app;