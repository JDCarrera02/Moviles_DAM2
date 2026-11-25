import 'package:shared_preferences/shared_preferences.dart';

class Preferencias {

  static late SharedPreferences preferencias;

  // Paso 1. Crear las propiedades globales que se quieren manejar en la app
  static bool permisoUbicacion = false;
  static bool permisoCamara = false;
  static bool temaOscuro = false;
  static String nombre = "";

  static Future init() async {
    preferencias = await SharedPreferences.getInstance();
  }

  // Paso 2. Crear los metodos que devuelvan los valores
  static get nombre_ => preferencias.getString('nombre') ?? nombre;
  static get permisoUbicacion_ => preferencias.getBool('ubicacion') ?? permisoUbicacion;
  static get permisoCamara_ => preferencias.getBool('camara') ?? permisoCamara;
  static get darkMode => preferencias.getBool('dark') ?? temaOscuro;

  // Paso 3. Crear los metodos para cambiar y almacebar los valores en memoria
  static set cambiarNombre(String nombreCambio){
    nombre = nombreCambio;
    preferencias.setString('nombre', nombreCambio);
  }

  static set isDarkMode(bool temaOscuroCambio){
    temaOscuro = temaOscuroCambio;
    preferencias.setBool('dark', temaOscuroCambio);
  }

  static set camara(bool camaraCambio){
    permisoCamara = camaraCambio;
    preferencias.setBool('camara', camaraCambio);
  }

  static set ubicacion(bool ubicacionCambio){
    permisoUbicacion = ubicacionCambio;
    preferencias.setBool('ubicacion', ubicacionCambio);
  }


  









}