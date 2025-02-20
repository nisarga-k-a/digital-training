const array = [1, 2, 3, 4, 5]; // Example array

// Using forEach to print each element with a function
array.forEach(function(element) {
    console.log(element);
});

// Using forEach to print each element with an arrow function
array.forEach(num => console.log(num));

const result = [65, 55, 89, 34, 35, 23];

// Check if every element in the array is greater than or equal to 35
console.log(result.every(num => num >= 35)); // false, not all elements are >= 35

// Check if at least one element in the array is greater than or equal to 90
console.log(result.some(num => num >= 90)); // false, no element is >= 90

// Flatten a nested array
console.log([[1, 2], 2, [3, 4, 5]].flat()); // [1, 2, 2, 3, 4, 5]

// Check if the array includes the number 5
console.log(array.includes(5)); // true

console.log("Nisarga".indexOf('N'))
console.log("Nisarga".lastIndexOf('N'))

const myarray= [10, 20, 20, 40, 50];
console.log(array.slice(2)); //starts from 2 to last
console.log(array.slice(2, 4)); //from 2 to 4

//insert the element

myarray.splice(3, 0, 60);  // 0 - is the delete count
console.log("After inserting the elemnt", myarray); // [10, 20, 60, 20, 40]

//to delete
myarray.splice(3, 1);  // 1 - is the delete count
console.log("After deleting", myarray);

//replace
myarray.splice(3, 1, 35);
console.log("After replece", myarray);