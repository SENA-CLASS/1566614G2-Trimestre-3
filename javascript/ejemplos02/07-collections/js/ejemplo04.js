(function () {
    var colors = ['red', 'green', , 'blue'];
    colors.forEach(function (color) {
        console.log(color);
    });

    colors.forEach(color => console.log(color));

    for (let i = 0; i < colors.length; i++) {
        console.log(colors[i]);
    }

    colors.forEach(function (color) { // parametro por valor
        color = color + " hola";
        console.log(color + " adsfasd");
    })

    for (let i = 0; i < colors.length; i++) {
        console.log(colors[i]);
    }

})();
