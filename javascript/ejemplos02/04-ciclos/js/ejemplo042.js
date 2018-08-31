let arr = [3, 5, 7];

arr.foo = "hello";


for (let i in arr) {
    console.log(i); // logs "0", "1", "2", "foo"
}

for (let i of arr) {
    console.log(i); // logs "3", "5", "7"
}


var moto = [3, 5, 6];
moto.color = "negra";
moto.marca = "honda";


var moto2 = {
    color: "negra",
    marca: "honda"
}


var avion = {
    marca: "alguna",
    velocidad: function () {
        console.log("calculo de velocidad");
        console.log("900 km/h");
    }
}

avion.enssender();

