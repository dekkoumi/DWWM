//creer une balise image mettre la classe qui lui faut grace au bootstrap faire un set image  faire une concaténation



/* <div class="carousel-item active">
<img src="" class="d-block w-100" alt="...">
<div class="carousel-caption d-none d-md-block">
  <h5>First slide label</h5>
  <p>Some representative placeholder content for the first slide.</p>
</div>
</div> */



/* <div class="carousel-item">
        <img src="" class="d-block w-100" alt="...">
        <div class="carousel-caption d-none d-md-block">
        <h5>Third slide label</h5>
        <p>Some representative placeholder content for the third slide.</p>
    </div>
</div> */

function genererImage(_data){ 
    for (let i = 0; i < _data.length; i++) {
         let monObjet=_data[i];
         
         if (i==0) {
             let maDiv1=document.createElement("div");
             maDiv1.setAttribute("class","carousel-item active");
             document.querySelector(".carousel-inner").appendChild(maDiv1);

             let image1=document.createElement("img");
             image1.setAttribute("src","photos_volcans/"+ monObjet.id+".jpg");
             image1.setAttribute("class","d-block w-100");
             maDiv1.appendChild(image1);
             

             let maDiv2=document.createElement("div");
             maDiv2.setAttribute("class","carousel-caption d-none d-md-block");
             maDiv1.appendChild(maDiv2);

             let h5=document.createElement("h5");
             h5.innerText=monObjet.titre;
             maDiv2.appendChild(h5);

         }
            else{

                let maDiv1=document.createElement("div");
             maDiv1.setAttribute("class","carousel-item");
             document.querySelector(".carousel-inner").appendChild(maDiv1);

             let image1=document.createElement("img");
             image1.setAttribute("src","photos_volcans/"+ monObjet.id+".jpg");
             image1.setAttribute("class","d-block w-100");
             maDiv1.appendChild(image1);
             

             let maDiv2=document.createElement("div");
             maDiv2.setAttribute("class","carousel-caption d-none d-md-block");
             maDiv1.appendChild(maDiv2);

             let h5=document.createElement("h5");
             h5.innerText=monObjet.titre;
             maDiv2.appendChild(h5);
            }
    
        }

}  
function chargerDonnees(){
min=document.getElementById("min").value;
max=document.getElementById("max").value;


let xhr = new XMLHttpRequest();
xhr.open("GET","tp_voyage_volcans.php?min="+min+"&max="+max,true);
// xhr.responseType="json";
xhr.send();
xhr.onload=function()
{if (xhr.status != 200) {
    //...On affiche le statut et le message correspondant
    alert("Erreur " + xhr.status + " : " + xhr.statusText);
    //Si le statut HTTP est 200, on affiche le nombre d'octets téléchargés et la réponse
    } else
     {
    let tabData = JSON.parse(xhr.responseText);
    // console.log(tabData);
genererImage(tabData);
   
    }
};
} 
let btnValid=document.querySelector("#validation");
btnValid.addEventListener("click",
function(){

  let suppCaroussel= document.querySelector(".carousel-inner");
  suppCaroussel.remove();
  let creerCarousel=document.createElement("div");
  creerCarousel.setAttribute("class","carousel-inner");
  document.querySelector("#carouselExampleCaptions").appendChild(creerCarousel);
    //supprimer le div et le recreer mais il n'y a rien dedans    
    chargerDonnees();
 }
);

// fetch("tp_voyage_volcans.php?min=var1&max=var2")
// .then(response => response.json())
// .then(response => genererImage(response))
// .catch(error =>alert ("erreur: "+error));


















//     let voyage = {

//         init: function () 
        
//         {
//             this.setImage();
//             this.setVoyage();
    
//         }
// }
//     {
//         voyage.setImage = function ()
//         {
//             let image = document.createElement("img");
//             image.classList.add("img-fluid");
//             image.setAttribute("src", "images/volcan.jpg");
//             document.getElementById("voyage").appendChild(image);
//             //modification de la balise image avec le setAttribute
//         }

//         voyage.setVoyage = function ()
//         {
//             let voyage = document.createElement("div");
//             voyage.classList.add("container");
//             //ajout d'une liste dans le container
//             document.getElementById("voyage").appendChild(voyage);
            
//         }
//     }   
        //  document ).ready() ne s’exécutera qu’une fois que la page DOM (Document Object Model) est prête à être exécutée par le code JavaScript.
        //jquery(document).ready(function () {
           // voyage.init();(en com car ne pas utiliser)
       // });

        

    
