var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('historias', {isHistorias:true, imgPortada: '/imagenes/historias.jpg', tituloPortada:'Historias', ubicTitulo:'h1'});
});

module.exports = router;