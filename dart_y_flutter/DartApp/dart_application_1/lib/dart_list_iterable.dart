void main(){

  final numbers = [1,2,3,4,5,5,5,6,7,7,8,9,10];

  print('Lista de numeros: $numbers');
  print('Tamaño: ${numbers.length}');
  print('Index 0: ${numbers.first}');
  // print('Reversed: ${numbers.reversed}');


  final numbersMasQue = numbers.where( (int num) {
    return num > 5;
  } );

  print(numbersMasQue.toSet());





}