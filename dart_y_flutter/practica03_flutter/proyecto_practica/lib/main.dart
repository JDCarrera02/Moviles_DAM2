import 'package:flutter/material.dart';
import 'package:proyecto_practica/pantallas/pantalla1.dart';
import 'package:proyecto_practica/pantallas/pantalla2.dart';
import 'package:proyecto_practica/pantallas/pantalla3.dart';
import 'package:proyecto_practica/pantallas/pantalla4.dart';
import 'package:proyecto_practica/pantallas/pantalla5.dart';

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
      // home: ListView1Screen(),
      initialRoute: "/",
      routes: {
        "/"     : (BuildContext context) => Pantalla1(),
        "pantalla2": (context) => Pantalla2(),
        "pantalla3": (context) => Pantalla3(), 
        "pantalla4"    : (context) => Pantalla4(),
        "pantalla5"     : (context) => Pantalla5(),

      },
      // onGenerateRoute gestiona donde vamos cuando la ruta con nombre no existe
      onGenerateRoute: (settings) => MaterialPageRoute(builder: (context) => Pantalla1(),),
      
      // theme: AppTheme( colorSeleccionado: 8 ).getTheme()
      // AppTheme.lightTheme
    );
  }
}

