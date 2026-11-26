import 'package:api_rest1/models/post.dart';
import 'package:api_rest1/services/posts_service.dart';
import 'package:flutter/material.dart';

class PostsScreen extends StatefulWidget {
   
  const PostsScreen({Key? key}) : super(key: key);

  @override
  State<PostsScreen> createState() => _PostsScreenState();
}

class _PostsScreenState extends State<PostsScreen> {

  // Lista de Post: Inicializarla a null mientras no haya datos disponibles
  List<Post>? listaPost;

  // Indicador para decir si está cargando o ha terminado la carga
  bool isLoading = false;

  @override
  void initState() {

    super.initState();

    // TODO: Iniciar la carga de los datos JSON (API)
    obtenerPosts();

  }

  // Metodo para obtener las publicaciones
  void obtenerPosts() async {

    listaPost = await PostsService().obtenerPosts();

    // Sólo se marcará como completada si se recibió una respuesta del servidor (válida)
    if (listaPost != null) {
      setState(() {
        isLoading = true;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: Visibility(
        visible: isLoading,
        replacement: Center(child: CircularProgressIndicator.adaptive(),),
        child: ListView.builder(
          itemCount: listaPost?.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: .start,
              children: [
                Text(listaPost![index].title), 
                Text(listaPost![index].body!), 
              ]
            );
          },
        )
      ),
    );
  }

  
}