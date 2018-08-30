(function () { //IIFE
    let varLeida = prompt("digite la letra de su sexo");

    switch (varLeida) {
        case "M":
        case "m":
            alert("usted es un macho de pecho peludo");
            break;
        case "F":
        case "f":
            alert("usted es una femina");
            break;
        default:
            alert("usted no tiene un sexo definido");
            break;

    }


})();
