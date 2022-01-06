const express = require('express')
const crypto = require('crypto')
const router = require('./routes/router_all');
const app = express()
const port = 3000
const path = require('path');

const bodyParser = require('body-parser');
// parse application/x-www-form-urlencoded
app.use(bodyParser.urlencoded({ extended: false }))

// parse application/json
app.use(bodyParser.json())
app.use(router)


//Database
const db = require('../config/databases');


//const router  = require("../routes/router_truck")

//Test DB
db.authenticate()
    .then(() => console.log('Database conected'))
    .catch(err => console.log('Error :' +err))
const { Camion, Camionneur, Course, Entrepot, Temperature } = require('./models')
db.sync()

Camionneur.hasOne(Course, {as: 'idCamionneur', foreignKey: 'idCamionneur'})
Camion.hasOne(Course, {as: 'idCamion', foreignKey: 'idCamion'})
Entrepot.hasOne(Course, {as: 'idEntrepotDepart', foreignKey: 'idEntrepotDepart'})
Entrepot.hasOne(Course, {as: 'idEntrepotArrive', foreignKey: 'idEntrepotArrive'})
Course.hasOne(Temperature, {as: 'idCourse', foreignKey: 'idCourse'})


app.get('/', (req, res) => {
    
})

app.get('/sha1', (req, res) => {
    const s = req.query.s
    if ((s == null) || (s.length == 0)) {
        res.status(400).send({message: "An error occurs: null or empty string"})
    }

    const shasum = crypto.createHash('sha1')
    shasum.update(s)
    const hashedValue = shasum.digest('hex') // => "0beec7b5ea3f0fdbc95d0dd47f3c5bc275da8a33"

    res.json({"hash": hashedValue})
})

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})