void main(){

  // final miCuadrado = Cuadrado(lado:3);

  // miCuadrado.lado = -4;

  
  
}

class Cuadrado{

  double _lado;

  Cuadrado({required lado})
  :assert(lado <=0, 'El lado debe ser mayor a 0'),
  assert(lado < 10,'El lado no puede ser mayor a 10'),
  _lado = lado;

  // Getter
  double get area{
    return _lado*_lado;
  }

  // Setter
  set lado (double valor){
    
    if (valor < 0) {
      throw 'El valor debe ser mayor que 0';
    } else { 
      print('El nuevo valor es $valor');
      _lado = valor;
    }
  }

}