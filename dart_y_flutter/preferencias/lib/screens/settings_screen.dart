import 'package:flutter/material.dart';
import 'package:preferencias/config/preferencias.dart';

class SettingsScreen extends StatefulWidget {
   
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  /*
  bool permisoUbicacion = false;
  bool permisoCamara = false;
  bool temaOscuro = false;
  String nombre = "";
  */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias'),
      ),
      body: Column(
        children: [
          SwitchListTile.adaptive(
            title: Text('Permiso de ubicacion'),
            value: Preferencias.permisoUbicacion, 
            onChanged: (value) {
              Preferencias.ubicacion = value;

              setState(() {});
            },),

            SwitchListTile.adaptive(
            title: Text('Permiso de camara'),
            value: Preferencias.permisoCamara, 
            onChanged: (value) {
              Preferencias.camara = value;

              setState(() {});
            },),

            SwitchListTile.adaptive(
            title: Text('Tema Dark'),
            value: Preferencias.darkMode, 
            onChanged: (value) {
              Preferencias.isDarkMode = value;

              setState(() {});
            },),

            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                initialValue: Preferencias.nombre,
                decoration: InputDecoration(
                  label: Text('Nombre'),
                  helperText: 'Nombre de usuario'
                ),
                onChanged: (value) {
                  Preferencias.cambiarNombre = value;
                },
              ),
            )

        ],
      ),
    );
  }
}