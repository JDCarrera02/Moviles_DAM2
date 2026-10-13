void main() {

  final Heroe wolverine = Heroe(nombre: 'Logan', poder: 'Regeneracion');

  print(wolverine.nombre);
  print(wolverine.poder);
  print(wolverine);

}

class Heroe {

  String nombre;
  String? poder;

  Heroe({   
    required this.nombre,
    this.poder = 'Sin poder'
  });

  @override
  String toString() {
    return 'Nombre: $nombre\nPoder: $poder';
  }
}