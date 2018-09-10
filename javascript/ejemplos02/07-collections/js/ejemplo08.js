(function () {
    let arreglo = [1, 2, 3, 4, 5, 6, 7, 444, 9, 34]; //3
    console.time("arreglo");
    arreglo.sort((a, b) => a - b);
    console.timeEnd("arreglo")
    console.log(arreglo);


    let arreglo2 = [1, 2, 3, 4, 5, 6, 7, 444, 9, 34]; // 1
    console.time("arreglo2");
    arreglo2.sort((a, b) => {
        if (a > b)
            return 1;
        else if (a < b)
            return -1;
        else if (a === b)
            return 0;
    });
    console.timeEnd("arreglo2");
    console.log(arreglo2);

    //imperativa //2
    let arreglo6 = [1, 10, 2, 3, 4, 5, 6, 7, 444, 9, 34];
    console.time();
    for (let i = 0; i < arreglo6.length - 1; i++) {
        for (let j = i + 1; j < arreglo6.length; j++) {
            if (arreglo6[i] > arreglo6[j]) {
                let burbuja = arreglo6[i];
                arreglo6[i] = arreglo6[j];
                arreglo6[j] = burbuja;
            }
        }
    }
    console.timeEnd();
    console.log(arreglo6);


    let arreglo3 = [1, 10, 2, 3, 4, 5, 6, 7, 444, 9, 34];
    arreglo3.sort();
    console.log(arreglo3);


    // declarativa
    let arreglo4 = [1, 10, 2, 3, 4, 5, 6, 7, 444, 9, 34]; //3
    let reduce = function (previousValue, currentValue) {
        return previousValue + currentValue;
    }
    console.time("resutado");
    let resutado = arreglo4.reduce(reduce, 0);
    console.timeEnd("resutado");
    console.log(resutado);

    // declarativa
    let arreglo5 = [1, 10, 2, 3, 4, 5, 6, 7, 444, 9, 34]; //2
    console.time("resutado2");
    let resutado2 = arreglo4.reduce((previousValue, currentValue) => {
        return previousValue + currentValue;
    }, 0);
    console.timeEnd("resutado2");
    console.log(resutado2);

    // imperaiva //1
    let arreglo7 = [1, 10, 2, 3, 4, 5, 6, 7, 444, 9, 34];
    let suma = 0;
    console.time()
    for (let i = 0; i < arreglo7.length; i++) {
        suma = suma + arreglo7[i];
    }
    console.timeEnd()
    console.log(suma);





})();
