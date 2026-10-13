void main(){

  print(saludar());

 
  
  print(saludar2());

  print(calcular(2,4));

  print(sumarOpcional(5));

  print(saludoCompleto(nombre:'Juan'));

}

String saludar(){
  return 'Hola Usuario';
}

 // Funciones de flecha
String saludar2 () => 'Hola usuario';

int calcular(int a, int b) => a+b; 

// ------------------------------------------


int sumarOpcional(int a, [int b = 0]){ // Pueden existir parametros opcionales
// O suma el segundo parametro o no, y le asigna 0 para que no de error
  return a + b; 
}

// Parametros con nombre
String saludoCompleto ({required String nombre, String mensaje = 'HOLA,'}){
  return '$mensaje $nombre';
}

