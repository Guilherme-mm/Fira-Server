const express = require('express');
const controller = require('../../control/networks/networksController');

module.exports = baseRouter => {
    const router = express.Router();
    
    router.route('/')
        .get(controller.listAll);

    baseRouter.use('/networks', router);
}