const array = []; // Declare an empty array
const array1 = [1, 2, 3, 4, 5];
const array2 = new Array(5); // Declare an array with 5 elements

console.log(array.length); // 0
console.log(array1.length); // 5
console.log(array2.length); // 5

array.push(10);
array.push(20);
array.push(30);

console.log("After push", array)
array.unshift(5);
console.log("After unshift", array)

array.unshift(2);
console.log("After unshift", array)

console.log(array.pop());
console.log("After pop", array)


console.log(array.shift());
console.log("After shift", array)

