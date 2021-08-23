var express = require('express');
var router = express.Router();


var novedadesModel=require('../models/novedadesModel');

/* GET home page. */
router.get('/',  async function(req, res, next) {


  var ultima_novedad = await novedadesModel.ultimaNovedadById();

  res.render('index', {isInicio:true, 
    imgPortada: '/imagenes/portada.jpg', 
    tituloPortada:'Mi Libreria', 
    ubicTitulo:'en_inicio',
    ultima_novedad
  });
});

module.exports = router;
