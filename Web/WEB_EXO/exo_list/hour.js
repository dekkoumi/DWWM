let button = document.createElement("button");
let body = document.getElementsByTagName("body")[0];
body.appendChild(button);
// button.innerHTML("<button>slt ca va</button>");
button.textContent = "slt ca va";

let minute, seconde;
let modifie = false;
let heure = Number(prompt("Quelle heure est-il ? Heure : "));
let titre = document.createElement("h1");
body.appendChild(titre);

if (heure < 24 && heure >= 0) {
  minute = Number(prompt("minutes : "));
  if (minute < 60 && minute >= 0) {
    seconde = Number(prompt("secondes : "));
    if (seconde < 60 && seconde >= 0) {
      alert(
        "Il est donc " +
          heure +
          " heure " +
          ": " +
          minute +
          " minute(s) " +
          ": " +
          seconde +
          " seconde(s)"
      );
      if (seconde == 59) {
        seconde = 0;
        minute += 1;
        modifie = true;
      }
      if (minute == 60) {
        minute = 0;
        heure += 1;
      }
      if (heure == 24) {
        heure = 0;
      }
      if (modifie) {
        alert(
          "Dans une seconde il sera donc " +
            heure +
            " heure " +
            ": " +
            minute +
            " minute(s) " +
            ": " +
            seconde +
            " seconde(s)"
        );
      } else {
        alert(
          "Dans une seconde il sera donc " +
            heure +
            " heure " +
            ": " +
            minute +
            " minute(s) " +
            ": " +
            (seconde + 1) +
            " seconde(s)"
        );
      }
    } else {
      alert("c'est moche");
    }
  } else {
    alert("c'est moche");
  }
} else {
  alert("c'est moche");
}
titre.textContent = "" + heure + " : " + minute + " : " + seconde;
button.addEventListener("click", function () {
  if (seconde == 59) {
    seconde = 0;
    minute += 1;
    modifie = true;
  } else {
    seconde += 1;
  }
  if (minute == 60) {
    minute = 0;
    heure += 1;
  }
  if (heure == 24) {
    heure = 0;
  }
  titre.textContent = "" + heure + " : " + minute + " : " + seconde;
});
