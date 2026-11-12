import 'package:material_ui/material_ui.dart';
import 'package:proyecto_practica03/models/menu_opciones.dart';

class Pantalla3 extends StatelessWidget {
   
  const Pantalla3({Key? key}) : super(key: key);
  
  // Pantalla 3 debe ir a: Pantalla 1 y 2

  // Colores de la pantalla
  static const Color colorPantalla = Color.fromARGB(255, 243, 255, 221);
  static const Color colorAppBar = Color.fromARGB(255, 71, 186, 72);

  @override
  Widget build(BuildContext context) {

    // Para el menu de opciones
    final menuOpciones = <MenuOpciones>[
      // Desde esta pantalla solamente se podrá ir a las pantallas 3 y 4
      MenuOpciones(ruta: "pantalla1", icono: Icons.looks_one, nombre: "Pantalla 1"),
      MenuOpciones(ruta: "pantalla2", icono: Icons.looks_two, nombre: "Pantalla 2"),
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 3 - Navegacion'),
        backgroundColor: colorAppBar,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(
        padding: EdgeInsets.all(20),
        itemBuilder: (context, i) => ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, menuOpciones[i].ruta);
          }, 
          icon: Icon(menuOpciones[i].icono),
          label: Text(menuOpciones[i].nombre)
        ), 
        separatorBuilder: (_, __) => Divider(), 
        itemCount: menuOpciones.length)
    );
  }
}