(function (document) {
    var arr = ["a", "ae", "a2"];

    console.log(arr["a"]);


    var arr = ["one", "two", "three"];
    console.log(arr[2]);  // three
    console.log(arr.length);  // 3

    var cats = [];
    cats[30] = ['Dusty', , '566'];
    console.log(cats.length); // 31
    for (let i = 0; i < cats.length; i++) {
        console.log(cats[i]);
    }

    var empleados = [
        ["enrique", 45555, "234234"],
        ["pedro", 3452, "sadfasdfasd"]
    ];

    for (let i = 0; i < empleados.length; i++) {
        console.log(empleados[i]);
        for (let j = 0; j < empleados[i].length; j++) {
            var empleado = empleados[i][j];
            console.log(empleado);
        }
    }


    var cats = ['Dusty', 'Misty', 'Twiggy'];
    console.log(cats.length); // 3

    cats.length = 2;
    console.log(cats); // logs "Dusty,Misty" - Twiggy has been removed

    cats.length = 0;
    console.log(cats); // logs nothing; the cats array is empty

    cats.length = 3;
    console.log(cats); // [undefined, undefined, undefined]

    var divs = document.getElementsByTagName('body');
    console.log("cantidad de elementos: " + divs.length);
    for (var i = 0, div; div = divs[i]; i++) {
        console.log(i);
    }

})(document);
