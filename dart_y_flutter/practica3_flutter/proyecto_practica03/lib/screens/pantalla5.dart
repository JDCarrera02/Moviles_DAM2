import 'package:material_ui/material_ui.dart';
import 'package:proyecto_practica03/models/menu_opciones.dart';
import 'package:proyecto_practica03/screens/pantalla1.dart';
import 'package:proyecto_practica03/widgets/botonBorrar.dart';

class Pantalla5 extends StatelessWidget {
   
  const Pantalla5({Key? key}) : super(key: key);
  
  // Pantalla 5 ir a: Pantalla 1, 2 y 4
  // Debe poder eliminar todas las pantallas de la pila u volver a la pantalla incial

  // Colores propios de la pantalla
  static final Color colorPantalla = Color.fromARGB(255, 255, 131, 131);
  static final Color fondoBotonP1 = Color.fromARGB(255, 145, 110, 185);
  static final Color fondoBotonP2 = Color.fromARGB(255, 57, 40, 249);
  static final Color fondoBotonP4 = Color.fromARGB(255, 238, 240, 122);

  @override
  Widget build(BuildContext context) {

    // Menu de opciones
    // Para el menu de opciones
    final menuOpciones = <MenuOpciones>[
      // Desde esta pantalla solamente se podrá ir a las pantallas 3 y 4
      MenuOpciones(ruta: "pantalla1", icono: Icons.looks_one, nombre: "Pantalla 1"),
      MenuOpciones(ruta: "pantalla2", icono: Icons.looks_two, nombre: "Pantalla 2"),
      MenuOpciones(ruta: "pantalla4", icono: Icons.landscape_outlined, nombre: "Pantalla 4"),
    ];


    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 5 - Navegacion'),
        backgroundColor: colorPantalla,
        foregroundColor: Colors.white,
      ),

      body: ListView.separated(
        padding: EdgeInsets.all(15),

        itemBuilder: (context, i) =>  ElevatedButton.icon(
          
          onPressed: () {
            Navigator.pushNamed(context, menuOpciones[i].ruta);
          }, 

          icon: Icon(menuOpciones[i].icono),
          label: Text(menuOpciones[i].nombre)
        ), 
        separatorBuilder: (_, __) => Divider(), 
        itemCount: menuOpciones.length
      ),

      floatingActionButton: Column(
        mainAxisAlignment: .end,
        children: [
          BotonBorrar(
            icono: Icons.delete_forever_rounded,
            onPressed: () {
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla1()),
                (Route<dynamic> route) => false,
              );
            },
          )
        ],
      ),
    );
  }
}