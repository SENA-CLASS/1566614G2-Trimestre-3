// leer dos numeros enteros positivos y determinar cual es mayor
let numero1 = parseInt(prompt("digite el numero"));
let numero2 = parseInt(prompt("digite el numero"));

if (numero1 >= 0 && numero2 >= 0) {

    if (numero1 > numero2) {
        alert("el numero " + numero1 + " es el mayor");
    } else {
        alert("el numero " + numero2 + " es el mayor");
    }
} else {
    alert("uno de los numero que ingreso no es positivo");
}


