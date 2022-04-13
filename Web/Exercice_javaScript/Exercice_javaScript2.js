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
