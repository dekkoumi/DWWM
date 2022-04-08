function triBulle(yolo) {
    let length = yolo.length;  
    for (let i = 0; i < length; i++) { 
          for (let j = 0; j < (length - i - 1); j++) { 
                   if(yolo[j] > yolo[j+1]) {
                           let tmp = yolo[j]; 
                yolo[j] = yolo[j+1]; 
                yolo[j+1] = tmp; 
            }
        }        
    }
}

let list = [5, 4, 3, 2, 1]; 
triBulle(list);

console.log(list);