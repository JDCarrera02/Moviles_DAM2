import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
   
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {

  bool permisoUbicacion = false;
  bool permisoCamara = false;
  bool temaOscuro = false;
  String nombre = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias'),
      ),
      body: Column(
        children: [
          CheckboxListTile.adaptive(
            title: Text('Permiso de ubicacion'),
            value: permisoUbicacion, 
            onChanged: (value) {
              permisoUbicacion = value!;

              setState(() {});
            },),

            CheckboxListTile.adaptive(
            title: Text('Permiso de camara'),
            value: permisoCamara, 
            onChanged: (value) {
              permisoCamara = value!;

              setState(() {});
            },),

            CheckboxListTile.adaptive(
            title: Text('Tema Dark'),
            value: temaOscuro, 
            onChanged: (value) {
              temaOscuro = value!;

              setState(() {});
            },),

            Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextFormField(
                initialValue: nombre,
                decoration: InputDecoration(
                  label: Text('Nombre'),
                  helperText: 'Nombre de usuario'
                ),
                onChanged: (value) {
                  nombre = value;
                },
              ),
            )

        ],
      ),
    );
  }
}