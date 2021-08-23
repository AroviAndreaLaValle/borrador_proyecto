var pool =require('./bd');

async function insertarContacto(obj){
    try{
        var query="insert into contactos set ?";
        var rows = await pool.query(query,[obj]);
        return rows;
    } catch (error){
        console.log(error);
        throw error;
    }
 }

module.exports={insertarContacto}