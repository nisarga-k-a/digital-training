console.log(greeting('Nisarga'))
// Function to return a greeting message
function greeting(name){
    return "Hello, " + name;
}

// Function to print a greeting for "John"
function print(){
    console.log(greeting("John"));
}

// Function to calculate the cube of a number
function cube(n){
    return n * n * n;
}

//Function expression
const data = function()
{
    console.log("data fetched successfully")
}
// Call the print function to display the greeting for "John"
print();

// Store the greeting for "Nisarga" in a variable
const result = greeting("Nisarga");

// Print the greeting for "Nisarga"
console.log(result);

// Calculate and print the cube of 5
console.log("Cube of 5: ", cube(5));