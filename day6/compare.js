let data = 20;
let input = "20";

console.log("==", data==input); // true: == checks for value equality, so 20 (number) is equal to "20" (string) after type coercion
console.log("===", data===input); // false: === checks for both value and type equality, so 20 (number) is not equal to "20" (string)