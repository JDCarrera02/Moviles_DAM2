import 'package:flutter/material.dart';
import 'package:preferencias/screens/settings_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared preferences',
      debugShowCheckedModeBanner: false,
      home: SettingsScreen(),
    );
  }
}