var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('libros', {isLibros:true, imgPortada: '/imagenes/nuestros_libros.jpg', tituloPortada:'Nuestros libros',  ubicTitulo:'h1' });
});

module.exports = router;