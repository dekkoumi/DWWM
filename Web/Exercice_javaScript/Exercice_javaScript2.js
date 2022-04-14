let madate =new Date();
let dd=madate.getDate();
let mm=madate.getMonth()+1;
let annee=madate.getFullYear();
if(dd<10){
    dd='0'+ dd;
}


if(mm<10){
    mm='0'+mm;
}
//let text_date= dd + "/" + mm + "/" + annee;
//document.getElementById("txt_date").value = text_date;
let text_date =""+ dd + "/" + mm + "/" + annee;

let btndate = document.getElementById("btndate");
btndate.addEventListener("click", function(){
    document.getElementById("txt_date").value= text_date;
}
)
// inscris moi un evenement click

let monheure=new Date();
let hh=monheure.getHours();
let min=monheure.getMinutes();
let sec=monheure.getSeconds();
if(hh<10){
    hh='0'+ hh;
}
if(min<10){
    min='0'+min;
}
if(sec<10){
    sec='0+'+sec;
}

let text_heure = ""+ hh +":" + min +":" + sec;


let btn_heure = document.getElementById("btn_heure");
btn_heure.addEventListener("click",function(){
    document.getElementById("txt_heure").value= text_heure;
}
)
