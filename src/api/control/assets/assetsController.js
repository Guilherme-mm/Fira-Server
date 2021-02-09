const AssetDB = require('../../../db/models/assets/AssetDB');
const controller = {};

controller.listAll = async (req, res) => {
    const assetDB = new AssetDB();

    const assetsList = await assetDB.all();

    res.status(200).json({data: JSON.stringify(assetsList)});
};

module.exports = controller;