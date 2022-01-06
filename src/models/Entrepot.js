const Sequelize = require('sequelize')
const db = require('../../config/databases')

const Entrepot = db.define('entrepot', {
    nom: {
        type: Sequelize.STRING(50)
    },
    ville : {
        type : Sequelize.STRING(20)
    }
})

module.exports = Entrepot;