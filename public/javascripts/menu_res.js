
var desplegado=false;

document.getElementById("menu_res").addEventListener("click", aparece);

function aparece() {

    if (desplegado==false) {

        document.getElementById("mover_contenido").classList.add('mover_contenido');

        document.getElementById("mover_botones").classList.add('mover_botones');

        desplegado=true;

    } 
    
    else {

        document.getElementById("mover_contenido").classList.remove('mover_contenido');

        document.getElementById("mover_botones").classList.remove('mover_botones');

        desplegado=false;
  
    }
}
