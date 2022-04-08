let yolo = [];
function facto (n) {
  if (n == 0 || n == 1)
    return 1;
  if (yolo[n] > 0)
    return yolo[n];
  return yolo[n] = facto(n-1) * n;
}



// // for(let i = 1 ; i <= nbre ; i++){
// //     yolo = yolo * i
// // }
//  alert(yolo);