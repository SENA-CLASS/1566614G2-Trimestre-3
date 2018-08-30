// Crear un tipo de objeto UserException
function Generica(tipo, aviso) {
    this.aviso = aviso;
    this.nombre = tipo;
}

// Make the exception convert to a pretty string when used as a string
// (e.g. by the error console)
Generica.prototype.toString = function () {
    return this.nombre + ': "' + this.aviso + '"';
};

// Create an instance of the object type and throw it
try {
    var a = 5;
    var b = 6;
    if (b !== 0) {
        console.log(a / b);
    } else {
        throw new Generica("Divicion por zero", "no se puede dividir en cero");
    }


} catch (e) {

    console.log(e.toString());
} finally {
    console.log("pase al finally");
}
try {
    var cars = ["Saab", "Volvo", "BMW"];

    for (let i = 0; i < 10; i++) {
        if (i >= cars.length) {
            throw new Generica("indices", "error el indice no puede ser mayor al tamaño del arreglo");
        } else
            console.log(cars[i]);
    }

} catch (e) {

    console.log(e.toString());
}

console.log("paso el error");

