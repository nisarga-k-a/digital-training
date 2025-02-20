console.log(x); // undefined
var x = 5;   //goes to top with the value
console.log(x); // 5

console.log(y); // ReferenceError: Cannot access 'y' before initialization
let y = 10;//goes top without the value, variable will go aste


//if you want to use for callback you can use annonymous function
const test = function(){
    console.log('Test trigerred');
}

//for debugging, for recursion use named function
const myFunction = function test(){
    console.log('Test trigerred');
}