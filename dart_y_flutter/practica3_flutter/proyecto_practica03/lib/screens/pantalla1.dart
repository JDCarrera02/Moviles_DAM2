import 'package:material_ui/material_ui.dart';
import 'package:proyecto_practica03/models/menu_opciones.dart';

class Pantalla1 extends StatelessWidget {
   
  const Pantalla1({Key? key}) : super(key: key);

  // Para el tema propio de la pantalla
  static const Color colorPersonalizado = Color.fromARGB(255, 145, 110, 185);

  
  @override
  Widget build(BuildContext context) {
    
    // Para el menu de opciones
    
    final menuOpciones = <MenuOpciones>[
      // Desde esta pantalla solamente se podrá ir a las pantallas 3 y 4
      MenuOpciones(ruta: "pantalla3", icono: Icons.screen_lock_landscape, nombre: "Pantalla 3"),
      MenuOpciones(ruta: "pantalla4", icono: Icons.landscape_outlined, nombre: "Pantalla 4")
    ];



    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla 1. Principal - Navegacion'),
        backgroundColor: colorPersonalizado,
      ),

      body: (ListView.separated(
        padding: EdgeInsets.all(15),
        itemBuilder: (context, i) => ListTile(
          leading: Icon(menuOpciones[i].icono, color: colorPersonalizado,),
          title: Text(menuOpciones[i].nombre,),
          onTap: () {
            Navigator.pushNamed(context, menuOpciones[i].ruta);
          },
          trailing: Icon(Icons.arrow_forward_ios, color: colorPersonalizado,),
        ), 
        separatorBuilder: (_, __) => Divider(), 
        itemCount: menuOpciones.length)
      ),
    );
  }
}