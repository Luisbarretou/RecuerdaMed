import 'package:flutter/material.dart';
import 'package:recuerdamed/components/logo_tile.dart';
import 'package:recuerdamed/components/my_button.dart';
import 'package:recuerdamed/components/my_textfield.dart';
import 'package:recuerdamed/ui/principal/inicio.dart';
import 'package:recuerdamed/ui/principal/registro.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  //Edicion de texto controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //Prueba
  void iniciarSesions() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFE0E0E0),
        body: SafeArea(
            child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 70,
                ),
                //Logo
                Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                ),
                const SizedBox(
                  height: 50,
                ),
                //Bienvenido
                const Text(
                  'Bienvenido!',
                  style: TextStyle(
                    color: Color(0xFF3E517A),
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //Campo Nombre de usuario
                MyTextField(
                  controller: usernameController,
                  hintText: 'Usuario',
                  obscureText: false,
                ),
                const SizedBox(
                  height: 10,
                ),
                //Campo Contraseña
                MyTextField(
                  controller: passwordController,
                  hintText: 'Contraseña',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                //¿Has olvidado la contraseña?
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Olvidaste tu contraseña?',
                        style: TextStyle(color: Color(0xFF757575)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                //Boton de inicio de sesion
                MyButton(
                  onPressed: () => {},
                  routeName: '/inicio',
                ),
                const SizedBox(
                  height: 50,
                ),
                //Continuar con
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      )),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'O puedes continuar con',
                          style: TextStyle(color: Color(0xFF616161)),
                        ),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey,
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                //Botones de inicio de sesion con google
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LogoTile(imageLogo: 'assets/images/google.png'),
                    SizedBox(
                      width: 10,
                    ),
                    LogoTile(imageLogo: 'assets/images/apple.png'),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                InkWell(
                  onTap: () => {Navigator.pushNamed(context, '/registro')},
                  child: const Text(
                    '<Crea una cuenta aqui>',
                    style: TextStyle(
                      color: Color(0xFF616161),
                    ),
                  ),
                )
              ],
            ),
          ),
        )));
  }
}
