function comprobarDatos() {
    if (document.form1.threeChar.value.length === 3) {
        return true;
    } else {
        alert("Introduce exactamente tres caracteres. " +
            document.form1.threeChar.value + " no es válido.");
        return false;
    }
}
