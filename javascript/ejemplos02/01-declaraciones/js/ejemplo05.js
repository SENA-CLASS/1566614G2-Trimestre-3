/**
 * LITERALES
 *
 */

//Literales Array

var cafes = ["Tostado Frances", "Colombiano", "Kona"];

for(let i = 0; i< cafes.length; i++){
    console.log(cafes[i]);
}


var o= {
    0: "Tostado Frances",
    1: "Colombiano",
    2: "Kona"
};

console.log(o["0"]);
console.log(o["1"]);
console.log(o["2"]);

var ob = Boolean(true); // este es un literal boleano que al final es un objeto
console.log(typeof ob);

var tb = true;
console.log(typeof tb); // es un tipo de dato boolean

// literales enteros

var l1 = 0o777;
var l2 = 2345234;
var l3 = 0x111;
var l4 = 0b111;

console.log(l1);
console.log(l2);
console.log(l3);
console.log(l4);
console.log(typeof l1);
console.log(typeof l2);
console.log(typeof l3);
console.log(typeof l4);

// literales flotantes

var lf1 =3.1415;
var lf2 =-3.1E12;
var lf3 =.1e12;
var lf4 =2E-12;

console.log(lf1);
console.log(lf2);
console.log(lf3);
console.log(lf4);
console.log(typeof lf1);
console.log(typeof lf2);
console.log(typeof lf3);
console.log(typeof lf4);

// literal tipo objeto

var Ventas = "Toyota";

/**
 * @return {string}
 */
function TiposCarro(nombre) {
    if (nombre === "Honda") {
        return nombre;
    } else {
        return "Lo siento, nosotros no vendemos " + nombre + ".";
    }
}

var carro = { miCarro: "Saturn", getCarro: TiposCarro("Mazda"), especial: Ventas};

console.log(carro.miCarro);  // Saturn
console.log(carro.getCarro); // Honda
console.log(carro.especial); // Toyota

console.log(typeof carro.miCarro);  // Saturn
console.log(typeof carro.getCarro); // Honda
console.log(typeof carro.especial); // Toyota

var avion = {};

console.log(typeof carro);
console.log(typeof avion);

var auto = { algunosAutos: {a: "Saab", "b": "Jeep"}, 7: "Mazda" };

console.log(auto.algunosAutos.b); // Jeep
console.log(auto[7]); // Mazda
console.log(typeof auto);
console.log(typeof auto.algunosAutos);
console.log(typeof auto["7"]);
console.log(typeof auto.algunosAutos.a);
console.log(typeof auto.algunosAutos.b);


var propiedadesDeNombreInusual = {
    "": "Un string vacio",
    "!": "Bang!"
};
//console.log(propiedadesDeNombreInusual."");   // SyntaxError: Unexpected string
console.log(propiedadesDeNombreInusual[""]);  // "Un string vacio"
//console.log(propiedadesDeNombreInusual .!);    // SyntaxError: Unexpected token !
console.log(propiedadesDeNombreInusual["!"]); // "Bang!"

// literales string

var ls1 = "hola mundo";
console.log(typeof ls1);

console.log("El gato de Jhon".length);
console.log("una linea \n otra linea");
console.log("una linea \b\b\b\b\b otra linea");


var str = "this string \
is broken \
across multiple\
lines.";
console.log(str);   // this string is broken across multiplelines.
