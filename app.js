var createError = require('http-errors');
var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');

/*-------------------------------------------*/
require('dotenv').config();
var session = require('express-session');


var indexRouter = require('./routes/index');
var usersRouter = require('./routes/users');
var comentariosRouter = require('./routes/comentarios');
var enviar_comentarioRouter = require('./routes/enviar_comentario');
var comentario_enviadoRouter = require('./routes/comentario_enviado');
var contactoRouter = require('./routes/contacto');
var contacto_enviadoRouter = require('./routes/contacto_enviado');
var descargarRouter = require('./routes/descargar');
var novedadesRouter = require('./routes/novedades');
var historiasRouter = require('./routes/historias');
var librosRouter = require('./routes/libros');
var nosotrosRouter = require('./routes/nosotros');
var loginRouter = require('./routes/admin/login');
var adminRouter = require('./routes/admin/novedades');



var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'hbs');

app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));


app.use(session({
  secret:'ORVAaapdv4548717408',
  resave:false,
  saveUninitialized: true
}))

secured = async (req, res, next)=> {
  try {
    console.log(req.session.id_usuario);
    if (req.session.id_usuario){
      next();
    }else{
      res.redirect('/admin/login');
    }
  }catch (error){
    console.log(error);
  }
}


app.use('/', indexRouter);
app.use('/users', usersRouter);
app.use('/comentarios', comentariosRouter);
app.use('/enviar_comentario', enviar_comentarioRouter);
app.use('/comentario_enviado', comentario_enviadoRouter);
app.use('/contacto', contactoRouter);
app.use('/contacto_enviado', contacto_enviadoRouter);
app.use('/descargar', descargarRouter);
app.use('/novedades', novedadesRouter);
app.use('/historias', historiasRouter);
app.use('/libros', librosRouter);
app.use('/nosotros', nosotrosRouter);


app.use('/admin/login',loginRouter);
app.use('/admin/novedades',secured, adminRouter);



//ejercicio unidad 3

/*var obj_comentario={
  id_comentario:7,
  nombre:'Pablo',
  email: 'pablolv@gmail.com',
  comentario:'Comentario de Pablo'
}

pool.query("insert into comentarios set ?", [obj_comentario]).then(function (resultados){
  console.log(resultados);
});

pool.query("select * from comentarios").then(function (resultados){
  console.log(resultados);
});


//fin ejercicio unidad 3*/

// catch 404 and forward to error handler
app.use(function(req, res, next) {
  next(createError(404));
});

// error handler
app.use(function(err, req, res, next) {
  // set locals, only providing error in development
  res.locals.message = err.message;
  res.locals.error = req.app.get('env') === 'development' ? err : {};

  // render the error page
  res.status(err.status || 500);
  res.render('error');
});

module.exports = app;
