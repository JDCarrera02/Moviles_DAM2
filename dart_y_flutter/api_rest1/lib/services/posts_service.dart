import 'package:http/http.dart' as http;
import 'package:api_rest1/models/post.dart';

class PostsService{

  // Hacer la peticion a la API para solicitar la lista del Post
  Future<List<Post>?> obtenerPosts() async {

    // Crear un cliente HTTP que va a permitir enviar la peticion
    var client = http.Client();

    // Convertir la direccion o endpoint en un objeto Uri
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');

    // Enviar la peticion de tipo GET y esperar la respuesta del servidor
    var response = await client.get(uri);

    // El codigo 200: indica que la peticion se ha realizado correctamente
    if (response.statusCode == 200) {
      var json = response.body;

      // Decodificar ese texto y se transforma cada elemento JSON en un objeto POST
      return postFromJson(json);
    }

    // Si devuelve otro codigo no se retorna ninguna lista
    return null;
    
  }

}