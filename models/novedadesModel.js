var pool =require('./bd');

async function getNovedades(){
    var query = "select * from novedades order by id_novedad desc ";
    var rows = await pool.query(query);
    return rows;     
}

async function borrarNovedadById(id_novedad){
    var query="delete from novedades where id_novedad=?";
    var rows=await pool.query(query, [id_novedad]);
    return rows;
}

/*------------mostrar ultima novedad en inicio novedades-----------------------------------*/
    async function ultimaNovedadById(){
    var query="select titulo,subtitulo from novedades order by id_novedad desc limit 0,1";
    var rows=await pool.query(query);
    return rows;
    }

/* -------------------------------------------------------------------------------------- */

 async function insertarNovedad(obj){
    try{
        var query="insert into novedades set ?";
        var rows = await pool.query(query,[obj]);
        return rows;
    } catch (error){
        console.log(error);
        throw error;
    }
 }

 async function getNovedadById(id_novedad){
     var query="select * from novedades where id_novedad=?";
     var rows=await pool.query(query,[id_novedad]);
     return rows[0];
 }

 async function modificarNovedadById(obj,id_novedad) {
    try {
        var query="update novedades set ? where id_novedad=?";
        var rows=await pool.query(query,[obj,id_novedad]);
        return rows;
    } catch (error){
        throw error;
    }
 }

module.exports={getNovedades, borrarNovedadById, ultimaNovedadById, insertarNovedad, getNovedadById,modificarNovedadById}