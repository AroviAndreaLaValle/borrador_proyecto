var express = require('express');
var router = express.Router();
var comentariosModel=require('../models/comentariosModel');
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function (req, res, next) {
  res.render('enviar_comentario', {isComentarios: true,
    imgPortada: '/imagenes/comentarios.jpg',
    tituloPortada: 'Comentarios',
    ubicTitulo: 'h1'
  });
});


/*-----------------------------------------------------------*/

router.get('enviar_comentario', (req, res, next)=>{
  res.render('enviar_comentario');
});

router.post('/', async (req, res, next) => {

  var nombre_com = req.body.nombre;
  var email_com = req.body.email;
  var comentario_com = req.body.comentario;

  console.log(req.body);

  var obj_comentario = {
    to: email_com,
    subject: "Nuevo comentario en Web Mi Libreria",
    html: "Nombre: " + nombre_com + "<br> E-mail: " + email_com + "<br> Comentario: " + comentario_com
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transport.sendMail(obj_comentario);

  res.render('comentario_enviado', {
    message: "Gracias por dejar su comentario",
  });

  try {
    if (req.body.nombre != "" && req.body.email != "" && req.body.comentario!= "") {
      await comentariosModel.insertarComentario(req.body);
      res.redirect('comentario_enviado')
    } else {
      res.render('enviar_comentario', {
        error: true, message: 'Todos los campos son requeridos'
      })
    }
  } catch (error) {
    console.log(error)
    res.render('enviar_comentario', {
      error: true, message: 'No se pudo enviar el comentario'
    });
  }

});
module.exports = router;

/*----------------------------------------------------*/


