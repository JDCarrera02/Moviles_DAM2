import 'package:flutter/material.dart';
import 'package:preferencias/config/preferencias.dart';
import 'package:preferencias/screens/settings_screen.dart';

void main() async {

  // Obtener la instancia de las preferencias
  await Preferencias.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    bool tema = Preferencias.darkMode;
    return MaterialApp(
      title: 'Shared preferences',
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
      themeMode: tema ? ThemeMode.dark : ThemeMode.light,
    );
  }
}