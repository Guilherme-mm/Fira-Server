const controller = {};

controller.ping = (req, res) => {
    res.status(200).json({data: "ok"});
};

module.exports = controller;