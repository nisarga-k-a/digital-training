function f1(){
    console.log('F1 executed');
}
function f2(){
    console.log('F2 executed');
}
function f3(){
    setTimeout(() => console.log('F3 executed'), 2000)
}
function f4(){
    console.log('f4 executed');
}
function f5(){
    console.log('F5 executed');
}
function f6(){
    console.log('F6 executed');
}

f1();f2();f3();f4();