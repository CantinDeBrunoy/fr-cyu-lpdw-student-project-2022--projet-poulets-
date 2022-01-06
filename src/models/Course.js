const Sequelize = require('sequelize')
const db = require('../../config/databases')

const Course = db.define('course', {
    arrive: {
        type: Sequelize.DATE
    },
    depart: {
        type: Sequelize.DATE
    },
    nbPoulet: {
        type: Sequelize.INTEGER(4)
    },
    vide: {
        type: Sequelize.BOOLEAN
    }
})

module.exports = Course;