const Sequelize = require("sequelize");
const config = require("../config/config");
const connection = new Sequelize(config);
module.exports = connection