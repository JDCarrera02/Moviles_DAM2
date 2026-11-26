import 'package:flutter/material.dart';
import 'package:inicio_sesion/presentation/screens/home_page.dart';
import 'widgets/custom_input_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  // Añadir estas variables para pasar los textos a la siguiente interfaz
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {

    // Liberar memoria al cerrar la pantalla (Login)
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio de sesion'),
        backgroundColor: const Color.fromARGB(255, 150, 255, 232),
      ),
      body: SingleChildScrollView(
        child: Padding(
          // Tengo que añadir EdgeInsets.symmetric mejor
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Form(
            child: Column(
              children: [
                // Asignar cada campo a cada customField
                CustomInputField(
                  labelText: 'Nombre',
                  hintText: 'Nombre del usuario',
                  controller: userController,
                  prefixIcon_: Icons.verified_user_outlined,
                ),
                const SizedBox(height: 20),
                
                CustomInputField(
                  labelText: 'Contraseña',
                  hintText: 'Contraseña',
                  controller: passwordController,
                  prefixIcon_: Icons.password_outlined,
                ),
                const SizedBox(height: 20),

                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        // Parsear a cada texto cada vartiable
                        builder: (context) => HomeScreen(
                          email: userController.text,
                          password: passwordController.text,
                        ),
                      ),
                    );
                  },
                  child: const Text('Iniciar sesion'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
