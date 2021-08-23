var pool =require('./bd');

async function getComentarios(){
    var query = "select * from comentarios order by id_comentario desc ";
    var rows = await pool.query(query);
    return rows;   
}


async function insertarComentario(obj){
    try{
        var query="insert into comentarios set ?";
        var rows = await pool.query(query,[obj]);
        return rows;
    } catch (error){
        console.log(error);
        throw error;
    }
 }

module.exports={getComentarios, insertarComentario}