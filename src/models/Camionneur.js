const Sequelize = require('sequelize')
const db = require('../../config/databases')

const Camionneur = db.define('camionneur', {
    nom: {
        type: Sequelize.STRING(50)
    },
    prenom : {
        type : Sequelize.STRING(20)
    },
    mdp : {
        type : Sequelize.STRING(50)
    }
})

module.exports = Camionneur;