import 'package:material_ui/material_ui.dart';
import 'package:proyecto_practica03/models/menu_opciones.dart';

class Pantalla4 extends StatelessWidget {
   
  const Pantalla4({Key? key}) : super(key: key);
  
  // Pantalla 4 ir a: Pantalla 3 y 5

  // Colores propios de la pantalla
  static final Color colorPantalla = Color.fromARGB(255, 238, 240, 122);

  @override
  Widget build(BuildContext context) {

    // Menu de opciones
    // Para el menu de opciones
    final menuOpciones = <MenuOpciones>[
      // Desde esta pantalla solamente se podrá ir a las pantallas 3 y 4
      MenuOpciones(ruta: "pantalla3", icono: Icons.screen_lock_landscape, nombre: "Pantalla 3"),
      MenuOpciones(ruta: "pantalla5", icono: Icons.camera_alt_outlined, nombre: "Pantalla 5"),
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 4 - Navegacion'),
        backgroundColor: colorPantalla,
        foregroundColor: Colors.black87,
      ),


      body: ListView.separated(
        padding: EdgeInsets.all(15),
        itemBuilder: (context, i) => ElevatedButton.icon(
          onPressed: () {
            Navigator.pushNamed(context, menuOpciones[i].ruta);    
          },

          label: Text(menuOpciones[i].nombre)
        ),

        separatorBuilder: (_, __) => Divider(), 
        itemCount: menuOpciones.length
      )
    );
  }
}