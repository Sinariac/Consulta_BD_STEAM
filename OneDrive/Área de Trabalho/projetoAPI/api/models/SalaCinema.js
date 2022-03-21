'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class SalaCinema extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  SalaCinema.init({
    nome: DataTypes.STRING,
    ativo: DataTypes.BOOLEAN,
    email: DataTypes.STRING,
    role: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'SalaCinema',
  });
  return SalaCinema;
};