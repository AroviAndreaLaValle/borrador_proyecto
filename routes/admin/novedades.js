var express = require('express');
var router = express.Router();
var novedadesModel = require('../../models/novedadesModel');


/* GET home page. */
router.get('/', async function (req, res, next) {
  var novedades = await novedadesModel.getNovedades();
  res.render('admin/novedades', {
    layout: 'admin/layout',
    usuario: req.session.usuario,
    novedades
  });
});

router.get('/borrar/:id_novedad', async (req, res, next) => {
  var id_novedad = req.params.id_novedad;
  await novedadesModel.borrarNovedadById(id_novedad);
  res.redirect('/admin/novedades')
});

router.get('/agregar', (req, res, next) => {
  res.render('admin/agregar', {
    layout: 'admin/layout'
  });
});

router.post('/agregar', async (req, res, next) => {
  try {
    if (req.body.titulo != "" && req.body.subtitulo != "" && req.body.cuerpo != "") {
      await novedadesModel.insertarNovedad(req.body);
      res.redirect('/admin/novedades')
    } else {
      res.render('admin/agregar', {
        layout: 'admin/layout',
        error: true, message: 'Todos los campos son requeridos'
      })
    }
  } catch (error) {
    console.log(error)
    res.render('admin/agregar', {
      layout: 'admin/layout',
      error: true, message: 'No se cargo la novedad'
    });
  }
});

router.get('/modificar/:id', async (req, res, next) => {
  var id = req.params.id;
  console.log(req.params.id);
  var novedad = await novedadesModel.getNovedadById(id);
  res.render('admin/modificar', {
    layout: 'admin/layout',
    novedad
  })
});

router.post('/modificar', async(req,res,next)=>{
  try{
    var obj={
      titulo:req.body.titulo,
      subtitulo:req.body.subtitulo,
      cuerpo:req.body.cuerpo,
    }
    console.log(obj)
    await novedadesModel.modificarNovedadById(obj, req.body.id_novedad);
    res.redirect('/admin/novedades');
  }catch (error){
    console.log(error)
    res.render('admin/modificar'),{
      layout:'admin/layot',
      error:true,
      massage:'No se modifico la novedad'
    }
  }
});



module.exports = router;