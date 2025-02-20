//Manual process
const array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

const resultArray = [];
for(let num of array){
    resultArray.push(num * 3);
}

console.log(resultArray); // [3, 6, 9, 12, 15]


//using higher order function

const newArray = array.map((num) => num * 3);
console.log(newArray); // [3, 6, 9, 12, 15]

const evenArray = array.filter((num) => num % 2 === 0);
console.log(evenArray); // [2, 4, 6, 8,]

//if first match found it will return that number
//if no mtach found then it will return undefined

const found = array.find((num) => num === 6);
console.log(found ? 'found: ' +found: 'Not found'); // 6

//find index of match (if found then return index of that number)
//if not found then it will return -1
const foundIndex = array.findIndex((num) => num === 6);
console.log(foundIndex ? 'found at index: ' + foundIndex : 'Not found'); // 5
