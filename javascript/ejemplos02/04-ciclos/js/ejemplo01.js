(function () {
    var le = parseInt(prompt("digite el numero: "));

    label:
        for (let i = 1; i <= 10; i++) {

            if (i == 7) {
                continue label;
            }
            console.log(le + " * " + i + " = " + (i * le));

        }

    first: for (var i = 0; i < 3; i++) {
        second: for (var j = 0; j < 3; j++) {
            if (i === 1) continue first;
            if (j === 1) break second;
            console.log(`${i} & ${j}`);
        }
    }


    var x = 0;
    var z = 0
    labelCancelLoops: while (true) {
        console.log("Outer loops: " + x);
        x += 1;
        z = 1;
        while (true) {
            console.log("Inner loops: " + z);
            z += 1;
            if (z === 10 && x === 10) {
                break labelCancelLoops;
            } else if (z === 10) {
                break;
            }
        }
    }


})();
