let list = [1, 7, 8, 5, 2, 3, 4, 6, 9, 0];
let yolo = false;

for (let i = 0; i < list.length - 1; i++) {
  for (let index = 0; index < list.length - 1; index++) {
    if (list[index] > list[index + 1]) {
      let temp = list[index];
      list[index] = list[index + 1];
      list[index + 1] = temp;

    }
  }
}
console.log(list);
