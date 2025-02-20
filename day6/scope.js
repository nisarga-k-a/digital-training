let globalName = "Global"; // Global scope

function hello() {
    if (true) {
        let localName = "John"; // Block scope
        const constantName = "Nisarga"; // Block scope
        var functionScopedVar = 8; // Function scope

        console.log('Block scoped let localName: ', localName); // John
        console.log('Block scoped const constantName: ', constantName); // Nisarga
        console.log('Function scoped var functionScopedVar: ', functionScopedVar); // 8
    }
    // Block scoped variables are not accessible here
    console.log('Block scoped let localName: ', typeof localName); // undefined
    console.log('Block scoped const constantName: ', typeof constantName); // undefined
    // Function scoped variable is accessible here
    console.log('Function scoped var functionScopedVar: ', functionScopedVar); // 8
}

function myFunction() {
    let localName = "John"; // Function scope
    const constantName = "Nisarga"; // Function scope
    var functionScopedVar = 8; // Function scope

    console.log('Function scoped let localName: ', localName); // John
    console.log('Function scoped const constantName: ', constantName); // Nisarga
    console.log('Function scoped var functionScopedVar: ', functionScopedVar); // 8
}

hello();
myFunction();

// Global scoped variable is accessible here
console.log('Global scoped let globalName: ', globalName); // Global
// Function scoped variables are not accessible here
console.log('Function scoped let localName: ', typeof localName); // undefined
console.log('Function scoped const constantName: ', typeof constantName); // undefined
console.log('Function scoped var functionScopedVar: ', typeof functionScopedVar); // undefined