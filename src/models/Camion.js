const Sequelize = require('sequelize')
const db = require('../../config/databases')

const Camion = db.define('camion', {
    immatriculation: {
        type: Sequelize.STRING(9)
    },
    poidsMax : {
        type : Sequelize.INTEGER(5)
    }
})

module.exports = Camion;