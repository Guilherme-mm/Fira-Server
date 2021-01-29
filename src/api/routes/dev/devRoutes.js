const express = require('express');
const controller = require('../../control/dev/devController');

module.exports = baseRouter => {
    const router = express.Router();
    
    router.route('/ping')
        .get(controller.ping);

    baseRouter.use('/dev', router);
}