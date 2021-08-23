var express = require('express');
var router = express.Router();
var novedadesModel=require('../models/novedadesModel');


/* GET home page. */
router.get('/', async function(req, res, next) {
  var novedades = await novedadesModel.getNovedades();
  res.render('novedades', {isInicio:true, 
    imgPortada: '/imagenes/portada.jpg', 
    tituloPortada:'Novedades',  
    ubicTitulo:'h1',
    novedades
  });
});

module.exports = router;

