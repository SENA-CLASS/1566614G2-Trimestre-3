var a;
console.log('El valor de a es ' + a); // El valor de a es undefined

console.log('El valor de b es ' + b); // El valor de b es undefined
var b;
var c;
console.log('El valor de c es ' + c); // Uncaught ReferenceError: c no está definida

let x;
console.log('El valor de x es ' + x); // El valor de x es undefined

console.log('El valor de y es ' + y); // Uncaught ReferenceError: y no está definida
//let y;
var y;

var input;

function hazEsto() {
    console.log('verdadero');
}

function hazEso() {
    console.log('falso');
}

if(input === undefined){
    hazEsto();
} else {
    hazEso();
}
