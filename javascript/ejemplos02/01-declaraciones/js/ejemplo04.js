//Estructura de datos y tipos

// PRIMITIVOS

// Boolean

var a = true;

console.log(typeof a);

// null

var b = null;

console.log(typeof b);
//console.log(b.toString()); // es un objeto pero null

// undefined
var c;
console.log(c);

// number

var d = 5;
console.log(typeof d);

//string

var e= "hola";
var f= 'hola';
console.log(typeof e);
console.log(typeof f);

// symbol

var g = Symbol();

console.log(typeof g);

let id1 = Symbol("id");
let id2 = Symbol("id");
let id3 = id2;

console.log(id1 == id2); // false
console.log(id2 == id3); // false

var h = {
    color: "negro",
    peso: "20kg"
};
console.log(typeof h);
console.log(h.color);
console.log(h.peso);

var respuesta = 42;
console.log(typeof respuesta);

respuesta = "Gracias por todo el pescado...";
console.log(typeof respuesta);

var ee = 45; // number
ee = ee+" es el valor"; //   string
console.log(ee);
ee= ee.length;
console.log(ee);

console.log("37" - 7); // 30
console.log("37A" - 7); // NaN
console.log("37" + 7); // "377"

var numero1String = "5.8";
console.log(parseInt(numero1String));
console.log(typeof parseInt(numero1String));
var numero2String = "5.8";
console.log(parseFloat(numero2String));
console.log(typeof parseFloat(numero2String));


