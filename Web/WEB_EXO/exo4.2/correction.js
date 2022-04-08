let yolo = prompt("Saisir votre mot : ");
yolo = yolo.split("");
palindrome(yolo);

function palindrome(yolo) {
    if (yolo.length == 0 || yolo.length == 1) {
      alert("Bravo / 20");
    }else if (yolo[0] == yolo[yolo.length - 1]) {
        yolo.pop();
        yolo.shift();
        palindrome(yolo);
    } else {
        alert("Nul / 20");
      }
    }
    