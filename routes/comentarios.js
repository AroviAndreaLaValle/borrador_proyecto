var express = require('express');
var router = express.Router();
var comentariosModel=require('../models/comentariosModel');

/* GET home page. */
router.get('/', async function (req, res, next) {
  var comentarios = await comentariosModel.getComentarios();
  res.render('comentarios', {isComentarios: true,
    imgPortada: '/imagenes/comentarios.jpg',
    tituloPortada: 'Comentarios',
    ubicTitulo: 'h1',
    comentarios
  });
});



module.exports = router;