// let modifie = false;
// let heure = Number(prompt("Quelle heure est-il ? Heure : "));
// if (heure < 24 && heure >= 0) {
//   let minute = Number(prompt("minutes : "));
//   if (minute < 60 && minute >= 0) {
//     let seconde = Number(prompt("secondes : "));
//     if (seconde < 60 && seconde >= 0) {
//       alert(
//         "Il est donc " +
//           heure +
//           " heure " +
//           ": " +
//           minute +
//           " minute(s) " +
//           ": " +
//           seconde +
//           " seconde(s)"
//       );
//       if (seconde == 59) {
//         seconde = 0;
//         minute += 1;
//         modifie = true;
//       }
//       if (minute == 60) {
//         minute = 0;
//         heure += 1;
//       }
//       if (heure == 24) {
//         heure = 0;
//       }
//       if (modifie) {
//         alert(
//           "Dans une seconde il sera donc " +
//             heure +
//             " heure " +
//             ": " +
//             minute +
//             " minute(s) " +
//             ": " +
//             seconde +
//             " seconde(s)"
//         );
//       }
//       else {
//         alert(
//             "Dans une seconde il sera donc " +
//               heure +
//               " heure " +
//               ": " +
//               minute +
//               " minute(s) " +
//               ": " +
//               (seconde+1) +
//               " seconde(s)"
//           );
//       }
//     } else {
//       alert("c'est moche");
//     }
//   } else {
//     alert("c'est moche");
//   }
// } else {
//   alert("c'est moche");
// }
const heureComplete = prompt("Donnez une heure en heure:minute:seconde").split(":");

let heure = parseInt(heureComplete[0]);
let minute = parseInt(heureComplete[1]);
let seconde = parseInt(heureComplete[2]);

if(isNaN(heure) || isNaN(minute) || isNaN(seconde)) {
    console.log("Entrez des nombres !!");
} else if(heure < 0 || heure > 23 || minute < 0 || minute > 59 || seconde < 0 || seconde > 59){
    console.log("Entrez des valeurs possibles");
} else {
 console.log(`${heure}:${minute}:${seconde}`);
    if(seconde < 59) {
        seconde++;
    } else {
        seconde = 0;
        if(minute < 59) {
            minute++;
        } else {
            minute = 0;
            if (heure < 23) {
                heure++;
            } else {
                heure = 0;
            }
        }
    }
    console.log(`Nouvelle heure : ${heure}:${minute}:${seconde}`);
}