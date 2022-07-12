let monText=[];
let init=false;

function fillTable(_text){
    monText= _text;
    let monTab=document.querySelector("#1");

    letmonBody = monTab.createTBody();

    monbody.setAttribute("id","corps");
    for (let i =0; i< _text.lenght; i++){
        letmonObjet=_text[i];
        let maLigne = monbody.insertRow();
        maLigne.setAttribute("id","maLigne"+ monObjet._1);
        for (let i=0; i <= 150;i++){
            switch (i){
                case 0:
                    let cell1= maLigne.insertCell();
                    cell1.innerText = monObjet.trip_id;
                    break;

                case 1:
                    let cell2= maLigne.insertCell();
                    cell2.innertext = monObjet.trip_description.substring(0,150);
            }


        }
    }


}


fetch("voyages.json")
.then(response=>response.json())
.then(response=>console.log(response))
.catch(error=>alert("erreur:"+error));