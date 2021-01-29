const express = require('express');
const consign    = require('consign');
const controller = require('./control/apiController');

module.exports = app => {
    const router = express.Router();

    router.route('/')
        .get(controller.base);

    consign({'cwd': 'src/api'})
        .include('routes')
        .into(router);

    app.use('/api/v1', router);
}