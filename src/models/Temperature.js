const Sequelize = require('sequelize')
const db = require('../../config/databases')

const Temperature = db.define('temperature', {
    date: {
        type: Sequelize.DATE
    },
    temperature : {
        type : Sequelize.STRING(50)
    }
})

module.exports = Temperature;