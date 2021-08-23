var express = require('express');
var router = express.Router();

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('nosotros', {isNosotros:true, imgPortada: '/imagenes/nosotros.jpg',tituloPortada :'Quienes somos',ubicTitulo:'h1'  });
});

module.exports = router;