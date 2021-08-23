var express = require('express');
var router = express.Router();
var contactosModel=require('../models/contactosModel');
var nodemailer = require('nodemailer');

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('contacto', {isContacto:true, 
    imgPortada: '/imagenes/contacto.jpg', 
    tituloPortada:'Contacto', 
    ubicTitulo:'h1'
  });
});

router.get('contacto', (req, res, next)=>{
  res.render('contacto');
});

router.post('/', async (req, res, next)=>{

  var nombre=req.body.nombre;
  var apellido=req.body.apellido;
  var email=req.body.email;
  var telefono=req.body.telefono;
  var mensaje=req.body.mensaje;

  console.log(req.body);

  var obj={
    to:email,
    subject:"Nuevo contacto desde Web Mi Libreria",
    html:"Nombre y apellido: " + nombre + " " + apellido + "<br> E-mail: " + email + "<br> Telefono: " + telefono + "<br> Mensaje: " + mensaje
  }

  var transport = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: process.env.SMTP_PORT,
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASS
    }
  });

  var info = await transport.sendMail(obj);

  res.render('contacto_enviado', {
    message:"Muchas gracias por contactarse con nosotros.",
    message1:"Su mensaje ha sido enviado correctamente.",
    message2:"En breve nos contactaremos con Ud.",
  });
  
  try {
    if (req.body.nombre != "" && req.body.apellido != ""&& req.body.email != "" && req.body.telefono != ""&& req.body.mensaje!= "") {
      await contactosModel.insertarContacto(req.body);
      res.redirect('contacto_enviado')
    } else {
      res.render('contacto', {
        error: true, message: 'Todos los campos son requeridos'
      })
    }
  } catch (error) {
    console.log(error)
    res.render('contacto', {
      error: true, message: 'No se pudo enviar el mensaje'
    });
  }

});
module.exports = router;