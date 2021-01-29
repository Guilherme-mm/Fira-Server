const controller = {};

controller.base = (req, res) => {
    res.status(200).json({data: "ok"});
};
  
module.exports = controller;