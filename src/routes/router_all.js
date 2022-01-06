const express = require('express');
const router = express.Router();
const db = require('../../config/databases');
// const City = require('../models/City');
const Camionneur = require('../models/Camionneur');
const Camion = require('../models/Camion');
const Course = require('../models/Course');
const Entrepot = require('../models/Entrepot');
const Temperature = require('../models/Temperature');

router.get('/camionneurs',(req,res) => {
    Camionneur.findAll()
    .then(camionneurs => {
        res.json(camionneurs)
    })
    .catch(err => console.log(err))
})

router.get('/camions',(req,res) => {
    Camion.findAll()
    .then(camions => {
        res.json(camions)
    })
    .catch(err => console.log(err))
})

router.get('/courses',(req,res) => {
    Course.findAll()
    .then(courses => {
        res.json(courses)
    })
    .catch(err => console.log(err))
})

router.get('/entrepots',(req,res) => {
    Entrepot.findAll()
    .then(entrepots => {
        res.json(entrepots)
    })
    .catch(err => console.log(err))
})

router.get('/temperatures',(req,res) => {
    Temperature.findAll()
    .then(temperatures => {
        res.json(temperatures)
    })
    .catch(err => console.log(err))
})

module.exports = router;