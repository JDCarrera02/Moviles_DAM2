import 'package:api_rest1/services/users_service.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatefulWidget {
   
  const UsersScreen({Key? key}) : super(key: key);

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {

  late Future<List<dynamic>> _futureUsers;

  @override
  void initState() {

    super.initState();

    // TODO: implement initState
    _futureUsers = UsersService().obtenerUsuariosConDIO();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de usuarios'),
      ),
      body: FutureBuilder(
        future: _futureUsers, 
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator.adaptive());
          } else if (snapshot.hasError){
            return Center(
              child: Text('Error: ${snapshot.error}'),
            );
          } else {
            final listaUsuarios = snapshot.data!;
            return ListView.builder(
              itemCount: listaUsuarios.length,
              itemBuilder: (context, index) {
                final usuario = listaUsuarios[index];
                return ListTile(
                  title: Text('Nombre: ${usuario['name']}', style: TextStyle(fontSize: 18, fontWeight: .bold),),
                  subtitle: Text('Direccion: ${usuario['address']['street']}', style: TextStyle(color: Colors.redAccent, fontSize: 16),),
                );
              },
            );
          }
        },
      ),
    );
  }
}