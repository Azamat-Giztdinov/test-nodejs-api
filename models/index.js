const Sequelize = require('sequelize');
const config = require('../config/config.js');

const sequelize = new Sequelize(config.DB, config.USER, config.PASSWORD, {
  host: config.HOST,
  dialect: config.dialect,
  pool: {
    max: config.pool.max,
    min: config.pool.min,
    acquire: config.pool.acquire,
    idle: config.pool.idle
  }
});

const db = {};
db.sequelize= sequelize;
db.Sequelize = Sequelize;
db.User = require('./users')(sequelize, Sequelize);

module.exports = db;
