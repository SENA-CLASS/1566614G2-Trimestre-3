(function () {
    var a = {
        primerNombre: "hernando",
        segundoNombre: "enrique",
        primerApellido: "moreno",
        segundoApellido: "moreno",
    };

    for (var nombreAtributo in a) {
        console.log("el nombre del atributo es: " + nombreAtributo + " y contiene: " + a[nombreAtributo]);
    }


    var b = [1, 2, 3, 4, 5, 6];

    for (let indice in b) {
        console.log("el arreglo en el indice: " + indice + " contiene: " + b[indice]);
    }

    for (let i = 0; i < b.length; i++) {
        console.log("el arreglo en el indice: " + i + " contiene: " + b[i]);
    }


})();
