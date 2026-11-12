import 'package:material_ui/material_ui.dart';
import 'package:proyecto_practica03/screens/pantalla1.dart';
import 'package:proyecto_practica03/screens/pantalla2.dart';
import 'package:proyecto_practica03/screens/pantalla3.dart';
import 'package:proyecto_practica03/screens/pantalla4.dart';
import 'package:proyecto_practica03/screens/pantalla5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: "/",
      routes: {
        "/"     : (BuildContext context) => Pantalla1(),
        "pantalla2": (context) => Pantalla2(),
        "pantalla3": (context) => Pantalla3(), 
        "pantalla4"    : (context) => Pantalla4(),
        "pantalla5"     : (context) => Pantalla5(),
      },
      
      onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) => Pantalla1(),),
    );
  }
}
