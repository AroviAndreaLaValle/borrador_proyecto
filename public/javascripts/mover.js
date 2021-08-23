window.onscroll = function(){

    scroll=document.documentElement.scrollTop;

    header = document.getElementById('header');

    if (scroll >10){
        header.classList.add('bajar');
    } else if(scroll <10){
        header.classList.remove('bajar');
    }

}