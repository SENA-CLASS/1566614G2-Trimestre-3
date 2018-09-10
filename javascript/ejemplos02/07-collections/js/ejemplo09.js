(function () {
    let fila = 2;
    let columnas = 2;
    let matriz = new Array(fila);
    for (let i = 0; i < fila; i++) {
        matriz[i] = new Array(columnas);
        for (let j = 0; j < columnas; j++) {
            matriz[i][j] = parseInt(prompt('el numero posicion [' + i + ',' + j + ']:'))

        }
    }
    for (let i = 0; i < fila; i++) {
        console.log(matriz[i]);
    }
    let mayor = matriz[0][0];
    for (let i = 0; i < fila; i++) {
        for (let j = 0; j < columnas; j++) {
            if (matriz[i][j] > mayor) {
                mayor = matriz[i][j];
            }
        }
    }
    console.log(mayor);
    console.log(matriz);


})();
