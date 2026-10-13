
void main(){

  final Map<String, dynamic> pokemon = {
    "nombre": "Ditto",
    "hp": 100,
    "isAlive": true,
    "sprites": {
      1: "ditto/front.jpg",
      2: "ditto/back.jpg"
    }
  };

  print(pokemon);

  print('Back: ${pokemon['sprites'][2]}');




}