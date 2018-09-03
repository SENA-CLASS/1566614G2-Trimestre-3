//cracion de matrices
(function () {

    var a = new Array('r', 'e', 't');

    a[3] = 4;
    a[4] = 5;

    for (let i = 0; i < a.length; i++) {
        console.log(a[i]);
    }

    var b = Array(1, 2, 3, 4, 5, 6, 7, 8, 9);


    for (let i = 0; i < b.length; i++) {
        console.log(b[i]);
    }

    var c = [1, 2, 3, 4, 5, 6, 7, 8, 9, 'a'];

    for (let i = 0; i < c.length; i++) {
        console.log(c[i]);
    }

    var d = new Array(10);

    for (let i = 0; i < d.length; i++) {
        console.log(d[i]);
    }

    var arr = [];
    arr[0] = 1;
    arr[1] = 2;
    arr[2] = 3;
    arr[3] = 4;
    arr[4] = 5;
    arr[5] = 6;

    for (let i = 0; i < arr.length; i++) {
        console.log(arr[i]);
    }

    var arr2 = [];
    arr2.length = 10;

    for (let i = 0; i < arr2.length; i++) {
        console.log(arr2[i]);
    }

    var u = {
        t: new Array(1, 2, 3, 4, 5),
        r: [1, 2, 3, 4, 5, 6, 7],
        y: Array(1, 2, 3, 4, 5, 6)
    };
    u.arrr = [1, 2, 3, 4, 5, 6, 7, 8];

    for (var propiedad in u) {
        console.log("-----------------");
        console.log("propiedad: " + propiedad)
        for (var arreglo of u[propiedad]) {
            console.log(arreglo);
        }
    }


    var tr = new Array();
    tr[0] = 45.7;
    var trr = [45.7];

    var arr = [];
    arr[3.4] = "Oranges";
    console.log(arr.length);                // 0
    console.log(arr.hasOwnProperty(3.4));   // true
    console.log(arr[3.4]);


})();

