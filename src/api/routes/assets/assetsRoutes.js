const express = require('express');
const controller = require('../../control/assets/assetsController');

module.exports = baseRouter => {
    const router = express.Router();
    
    router.route('/')
        .get(controller.listAll);

    baseRouter.use('/assets', router);
}