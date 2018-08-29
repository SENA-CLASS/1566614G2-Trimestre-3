function validate(obj, lowval, hival){
    if ((obj.value < lowval) || (obj.value > hival))
        alert("¡Valor inválido!");
    else{
        alert("valor valido");
    }
}



class Animal {
    _sexo;


    constructor(sexo) {
        this._sexo = sexo;
    }

    get sexo() {
        return this._sexo;
    }

    set sexo(value) {
        this._sexo = value;
    }
}


class Perro extends Animal{
    _raza;
    _size;
    _color;


    constructor(sexo, size, color) {
        super(sexo);
        this._size = size;
        this._color = color;
    }

    get raza() {
        return this._raza;
    }

    set raza(value) {
        this._raza = value;
    }

    get size() {
        return this._size;
    }

    set size(value) {
        this._size = value;
    }

    get color() {
        return this._color;
    }

    set color(value) {
        this._color = value;
    }




}


