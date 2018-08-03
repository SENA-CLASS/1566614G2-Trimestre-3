/**
 *
 * undefined
 *
 * ojo con esto el undefined tiene varios valores dependiendo donde se usa
 *
 */

//El valor undefined se comporta como un false cuando se utiliza en un contexto booleano.

var myArray = new Array();
console.log(myArray[0]);
if (!myArray[0]) {
   console.log("verdadero");
}else{
    console.log("falso");
};

// El valor undefined se convierte en NaN, no numérico, cuando se usa en una operación aritmética.

var a;
console.log(a + 2); // Se evalua a NaN "Not-a-Number"

// Cuando se evalúa una variable nula, el valor null se comporta como el 0 en operaciones aritméticas y como false en operaciones lógicas.

var n = null;
console.log(n * 32); // Va a lanzar 0 a la consola

var aaa;
var eee = null;
console.log(aaa*eee);

/**
 * hoisting
 */

/**
 * Ejemplo 1
 */
console.log(x === undefined?'verdad':'false'); // true
var x = 3;
console.log(x);

/**
 * Ejemplo 2
 */
// devolverá un valor undefined
var myvar = "my value";

(function() {
    console.log(myvar); // undefined
    var myvar = "local value";

})();

// Función hoisting

/* Declaración de la función */

foo(); // "bar"

function foo() {
    console.log("bar");
}

/* Expresión de la función */

baz(); // TypeError: baz no es una función

var baz = function() {
    console.log("bar2");
    return 5;
};

// constantes

const PI = 3.14;

// ESTO CAUSARÁ UN ERROR
function f() {};
const f = 5;

// ESTO TAMBIÉN CAUSARÁ UN ERROR
function f() {
    const g = 5;
    //var g; // esta mal por que est en mismo ambito
    //sentencias
}

var g;



