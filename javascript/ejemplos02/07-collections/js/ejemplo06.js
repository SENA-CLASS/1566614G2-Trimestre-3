(function () {
    var myArray = new Array("1", "2", "3");
    myArray = myArray.concat("a", "b", "c");
// myArray is now ["1", "2", "3", "a", "b", "c"]
    console.log(myArray);


    var myArray = new Array("Wind", "Rain", "Fire");
    var list = myArray.join(" - "); // list is "Wind - Rain - Fire"
    console.log(list);

    var myArray = new Array("1", "2");
    myArray.push("3"); // myArray is now ["1", "2", "3"]
    console.log(myArray);

    var myArray = new Array("1", "2", "3");
    var last = myArray.pop();
// myArray is now ["1", "2"], last = "3"
    console.log(myArray);
    console.log(last);

    var myArray = new Array("1", "2", "3");
    var first = myArray.shift();
// myArray is now ["2", "3"], first is "1"
    console.log(myArray);
    console.log(first);


    var myArray = new Array("1", "2", "3");
    var nuevaLongitud = myArray.unshift("4", "5");
// myArray becomes ["4", "5", "1", "2", "3"]
    console.log(myArray);
    console.log(nuevaLongitud);

    var myArray = new Array("a", "b", "c", "d", "e");
    var arreglo2 = myArray.slice(1, 4); // starts at index 1 and extracts all elements
    // until index 3, returning [ "b", "c", "d"]
    console.log(myArray);
    console.log(arreglo2);

    var myArray = new Array("1", "2", "3", "4", "5");
    myArray.splice(1, 3, "a", "b", "c", "d");
// myArray is now ["1", "a", "b", "c", "d", "5"]
// This code started at index one (or where the "2" was),
// removed 3 elements there, and then inserted all consecutive
// elements in its place.
    console.log(myArray);

    var myArray = new Array("1", "2", "3");
    myArray.reverse();
// transposes the array so that myArray = [ "3", "2", "1" ]
    console.log(myArray);

    var myArray = new Array("Wind", "Rain", "Fire");
    myArray.sort();
// sorts the array so that myArray = [ "Fire", "Rain", "Wind" ]
    console.log(myArray);

    var myArray = new Array("Wind", "Rain", "Fire");
    var sortFn = function (a, b) {
        if (a[a.length - 1] < b[b.length - 1]) return -1;
        if (a[a.length - 1] > b[b.length - 1]) return 1;
        if (a[a.length - 1] == b[b.length - 1]) return 0;
    }
    myArray.sort(sortFn);
// sorts the array so that myArray = ["Wind","Fire","Rain"]
    console.log(myArray)

    var a = ['a', 'b', 'a', 'b', 'a'];
    console.log(a.indexOf('b')); // logs 1
// Now try again, starting from after the last match
    console.log(a.indexOf('b', 2)); // logs 3
    console.log(a.indexOf('z')); // logs -1, because 'z' was not found

    var a = ['a', 'b', 'c', 'd', 'a', 'b'];
    console.log(a.lastIndexOf('b')); // logs 5
// Now try again, starting from before the last match
    console.log(a.lastIndexOf('b', 4)); // logs 1
    console.log(a.lastIndexOf('z')); // logs -1

    var a = ['a', 'b', 'c', 'd', 'a', 'b', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 't', 'a', 't'];
    let dd = a.indexOf('a');
    while (dd !== -1) {
        console.log('encontre a \'a\'en la posición: ' + dd);
        dd = a.indexOf('a', (dd + 1));
    }

    for (let i = 0; i < a.length; i++) {
        if (a[i] == 'a') {
            console.log('encontre a \'a\'en la posición: ' + i);
        }
    }

    var a = ['a', 'b', 'c'];
    a.forEach(function (element) {
        console.log(element);
    }); // funcional
    a.forEach(x => console.log(x)); // lambda

    var a1 = ['a', 'b', 'c'];
    var a2 = a1.map(function (valor, indice) {
        return " el arreglo contiene " + valor + " en la posicion " + indice;
    });
    console.log(a2); // logs A,B,C


    var arreglo1 = [1, 2, 3, 7, 5, 6, 7, 8, 9];
    var arreglo2 = [1, 2, 3, 4, 5, 6, 7, 8, 9];

    for (let i = 0; i < arreglo1.length; i++) {
        if (!(arreglo1[i] == arreglo2[i])) {
            console.log("hayun valor dirente en la posicion" + i);
            break;
        }
    }

    var a1 = ['a', 10, 'b', 20, 'c', 30];
    var a2 = a1.filter(function (item) {
        return typeof item == 'number';
    });
    console.log(a2); // logs 10,20,30

    // programacion funcional
    var a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];

    var a2 = a1.filter(function (x) {
        let con = 0;
        for (let i = 1; i <= x; i++)
            if (x % i === 0)
                con++;
        if (con === 2)
            return true;
    }).filter(function (x) {
        if (x % 2 === 0)
            return true;
    });
    console.log(a2);

    // estructurada
    var a1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
    let arregloPrimos = [];
    for (let i = 0; i < a1.length; i++) {
        let con = 0;
        for (let j = 1; j <= a1[i]; j++)
            if (a1[i] % j === 0)
                con++;
        if (con === 2)
            arregloPrimos.push(a1[i]);
    }
    let arregloPares = [];
    for (let i = 0; i < arregloPrimos.length; i++)
        if (arregloPrimos[i] % 2 === 0)
            arregloPares.push(arregloPrimos[i])

    console.log(arregloPares);

    var a1 = [6, 2, 8, 4, 6, 6, 6, 8, 6, 10, 6];
    // mira si todos los numero del arreglo son pares
    console.log(a1.every(value => {
        if (value % 2 === 0) {
            return true;
        }
    }));


    var a1 = [6, 2, 8, 4, 6, 6, 6, 8, 6, 10, 6];
    // mira si alguno de los numeros es impar
    console.log(a1.some(value => {
        if (value % 2 === 1) {
            return true;
        }
    }));

    var a = [10, 20, 30];
    var total = a.reduce(function (anterior, actual) {
        return anterior + actual;
    });
    console.log(total) // Prints 60

    var nombre = ['hernando', 'enrique', 'moreno', 'moreno'];

    console.log(nombre.reduce((a, s) => {
        return a + " " + s
    }));
    let cadena = String();
    for (let i = 0; i < nombre.length; i++) {
        cadena = cadena + " " + nombre[i];
    }
    console.log(cadena);

    var nombre = ['hernando', 'enrique', 'moreno', 'moreno'];

    console.log(nombre.reduceRight((a, s) => {
        return a + " " + s
    }));

    var varaible = [1, 98, 3, 4, 6, 7, 8, 98, 9, 9];
    var ca = varaible.map(x => x);
    var mayor = ca.sort()[varaible.length - 1];
    varaible.forEach(function (v, i) {
        if (mayor == v) {
            console.log("la posicion del numero mayor es: " + i);
        }
    });


})();
