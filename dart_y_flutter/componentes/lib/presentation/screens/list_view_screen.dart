import 'package:flutter/material.dart';


class ListView1Screen extends StatelessWidget {

  const ListView1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Tipo 1')),

      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.access_time_sharp),
            title: Text('Hola Mundo')
          )
        ],
      )
   );
  }
}