import 'package:material_ui/material_ui.dart';
import 'package:proyecto_practica03/models/menu_opciones.dart';

class Pantalla2 extends StatelessWidget {
   
  const Pantalla2({Key? key}) : super(key: key);
  
  // Pantalla dos debe ir a: pantalla5

  // Colores de la pantalla
  static const Color colorAppBar = Color.fromARGB(255, 57, 40, 249);
  static const Color colorBoton = Color.fromARGB(255, 156, 20, 2);


  @override
  Widget build(BuildContext context) {

    // Para el menu de opciones
    final menuOpciones = <MenuOpciones>[
      // Desde esta pantalla solamente se podrá ir a las pantallas 3 y 4
      MenuOpciones(ruta: "pantalla5", icono: Icons.camera_alt_outlined, nombre: "Pantalla 5"),
    ];

    return Scaffold(

      appBar: AppBar(
        title: Text('Pantalla 2 - Navegacion'),
        backgroundColor: colorAppBar,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemBuilder: (context, i) => ElevatedButton.icon(
          style: ElevatedButton.styleFrom(
            backgroundColor: colorAppBar,
            foregroundColor: Colors.white,
            padding: EdgeInsets.symmetric(vertical: 15),
          ),
          icon: Icon(menuOpciones[i].icono),
          label: Text(menuOpciones[i].nombre),
          onPressed: () {
            Navigator.pushNamed(context, menuOpciones[i].ruta);
          }, 
        ), 
        separatorBuilder: (_, __) => Divider(), 
        itemCount: menuOpciones.length) 
      );
  }
}