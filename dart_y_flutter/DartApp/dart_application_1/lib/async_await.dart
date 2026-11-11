void main() async{

  print('Inicio del programa');

  try {
    
    final value = await httpGet('Esta URL');
    print(value);

  } catch (err){

    print('Tenemos un error: $err');

  } finally {
    print('Final del programa');
  }


  /*httpGet('http://www.google.es')
  .then((value) {
    print(value);
  })
  .catchError((err) => print(err),);
  */

}

Future <String> httpGet(String url) async {                                                                                                                                                                                                     

  await Future.delayed(Duration(seconds: 3));
  throw 'Respuesta de la peticion http';

  /*
  return Future.delayed(Duration(seconds: 2), (){
    return 'Respuesta de la peticion http';
    // throw 'Error de la peticion http';
  });
  */
}
