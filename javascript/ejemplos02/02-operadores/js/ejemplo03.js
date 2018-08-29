var partes = ["hombros", "rodillas"];
var letra = ["cabeza", ...partes, "y", "dedos"];

for (let i = 0; i < letra.length ; i++) {
    console.log(letra[i]);
}


function f(x, y, z) {
    console.log(x);
    console.log(y);
    console.log(z);

}
var args = [0, 1, 2,6];
f(...args);
