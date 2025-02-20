const array = [1, 2, 3, 2, 4, 2, 5, 2]; // Example array

// Function to count the number of 2s in the array
function countTwos(arr) {
    return arr.filter(num => num === 2).length;
}

const numberOfTwos = countTwos(array);
console.log("Number of 2s in the array:", numberOfTwos); // Output: 4