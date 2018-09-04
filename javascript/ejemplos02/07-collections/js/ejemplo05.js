(function () {
    // leer un array de 10 numeros

    let arreglo = [];
    let sizeArray = parseInt(prompt("ingrese el tamaño del arreglo"));
    for (let i = 0; i < sizeArray; i++) {
        arreglo[i] = parseInt(prompt("ingrese el arreglo en la posicion: " + i));
    }

    console.log(arreglo);


})();
