


 // XOR
 if (false  ^  true){
     console.log("verdadero");
 }else{
     console.log("falso");
 }

 let exp = 4 ** 5;
 console.log(exp);

 /**
  Assignment	x = y	x = y
  Addition assignment	x += y	x = x + y
  Subtraction assignment	x -= y	x = x - y
  Multiplication assignment	x *= y	x = x * y
  Division assignment	x /= y	x = x / y
  Remainder assignment	x %= y	x = x % y
  Exponentiation assignment	x **= y	x = x ** y
  Left shift assignment	x <<= y	x = x << y
  Right shift assignment	x >>= y	x = x >> y
  Unsigned right shift assignment	x >>>= y	x = x >>> y
  Bitwise AND assignment	x &= y	x = x & y
  Bitwise XOR assignment	x ^= y	x = x ^ y
  Bitwise OR assignment	x |= y	x = x | y
  */


 //Destructuración

 var foo = ['56','dos','tres'];

 // sin destructuración
 var uno  = foo[0];
 var dos  = foo[1];
 var tres = foo[2];

 // con destructuración
 var [unod, dosd, tresd] = foo;

 console.log(unod);
 console.log(dosd);
 console.log(tresd);

 // Operadores de comparación relacionales

 // ==
 var var1 =3;
 console.log(3 == var1);
 console.log("3" == var1);
 console.log( 3 == "3");

 // Desigualdad (!=)
 console.log(var1 != 4);
 console.log(var1 != "3");

 //Estrictamente iguales (===)
 console.log(3 === "3");

 //Estrictamente desiguales (!==)
 console.log(3 !== "3");

 // Mayor que (>)
 console.log(6 > var1);
 console.log( "12" > 2);

 // https://developer.mozilla.org/es/docs/Web/JavaScript/Guide/Expressions_and_Operators

  var a5 =  "Dog" && "Cat";
 console.log(a5);

var edad = 5;
 var estado = (edad >= 18) ? "adulto" : "menor";
 console.log(estado);

 var a =[1,2,3,4,5,56,6,7,7];
 delete a[5];

 for (let i = 0; i < a.length ; i++) {
     console.log(a[i]);
 }

 var ol = {marca: "adidas", talla: "xl"};
 console.log(ol.marca);
 console.log(ol.talla);
 delete ol.marca;
 console.log(ol.marca);

var variable = 4;
delete variable;
console.log(variable);


 x = 42;
 var y = x;
 miObj = new Number();
 miObj.h = 4;    // crea la propiedad "h"
 delete x;       // devuelve true (se puede eliminar si se declaró implícitamente)
 delete y;       // devuelve false (no se puede eliminar si se declaró con var)
 delete Math.PI; // devuelve false (no se pueden eliminar propiedades predefinidas)
 delete miObj.h; // devuelve true (se pueden eliminar propiedades definidas por el usuario)
 delete miObj;   // devuelve true (se puede eliminar si se ha declarado implícitamente)
console.log(y);

 var arboles = new Array("secoya", "laurel", "cedro", "roble", "arce");
 delete arboles[3];
 for (let i = 0; i < arboles.length ; i++) {
     console.log(arboles[i]);
 }

 if (3 in arboles) {
     console.log("entre en el delete")
 }

 var arboles = new Array("secoya", "laurel", "cedro", "roble", "arce");
 arboles[3] = undefined;

 for (let i = 0; i < arboles.length ; i++) {
     console.log(arboles[i]);
 }
 if (3 in arboles) {
     console.log("se eliminino pero con unsgigned");
 }


 var oloco = {a: "a", b : undefined};
 delete oloco.a;
 console.log(oloco.a);
 console.log(oloco.b);
 console.log(oloco.a == oloco.b);


 var perro = {raza : "pastor aleman", sexo: "m"};

 if("sexo" in perro){
     console.log("perro tiene el atributo sexo");
 }else{
     console.log("perro no tiene ese atributo");
 }

 // Arrays
 var arboles = new Array("secoya", "laurel", "cedro", "roble", "arce");
 0 in arboles;        // devuelve true
 3 in arboles;        // devuelve true
 6 in arboles;        // devuelve false
 "laurel" in arboles; // devuelve false (Se debe especificar el número de índice,
                      // no el valor contenido en ese índice)
 "length" in arboles; // devuelve true (length es una propiedad del Array)

 // Objetos predefinidos
 "PI" in Math;          // devuelve true
 var miCadena = new String("coral");
 "length" in miCadena;  // devuelve true

 // Objetos creados
 var miCoche = {marca: "Honda", modelo: "Accord", fecha: 1998};
 "marca" in miCoche;  // devuelve true
 "modelo" in miCoche; // devuelve true



 if (arboles instanceof Array){
  console.log("es una instancia de Array");
 }else{
  console.log("no es una instancia de array");
 }
