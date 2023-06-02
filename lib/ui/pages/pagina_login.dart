// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recuerdamed/components/logo_tile.dart';
import 'package:recuerdamed/components/my_button.dart';
import 'package:recuerdamed/components/my_textfield.dart';

class PaginaLogin extends StatefulWidget {
  final Function()? onTap;
  PaginaLogin({super.key, required this.onTap});

  @override
  State<PaginaLogin> createState() => _PaginaLoginState();
}

class _PaginaLoginState extends State<PaginaLogin> {
  //Edicion de texto controller
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  void iniciarSesion() async {
    //Spinner de carga
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: usernameController.text, password: passwordController.text);
      //Cierra el spinner una vez cargado
      Navigator.pop(context);
    } on FirebaseException catch (e) {
      //Cierra el spinner una vez cargado
      Navigator.pop(context);
      if (e.code == 'user-not-found') {
        //Verifica si el email esta registrado
        //print('Email no registrado');
        emailNoRegistrado();
      } else if (e.code == 'wrong-password') {
        //Verifica si la contraseña es válida del correo ingresado
        //print('Contraseña inválida');
        contraseniaInvalida();
      }
    }
  }

  void emailNoRegistrado() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color(0xFF636CFF),
          title: Center(
            child: Text(
              'Email no registrado',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

  void contraseniaInvalida() {
    showDialog(
      context: context,
      builder: (context) {
        return const AlertDialog(
          backgroundColor: Color(0xFF636CFF),
          title: Center(
            child: Text(
              'Contraseña no válida',
              style: TextStyle(color: Colors.white),
            ),
          ),
        );
      },
    );
  }

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
                  height: 15,
                ),
                //Logo
                Image.asset(
                  'assets/images/login.png',
                  width: 80,
                ),
                const SizedBox(
                  height: 50,
                ),
                //Campo Nombre de usuario
                MyTextField(
                  controller: usernameController,
                  hintText: 'Email',
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
                  onTap: iniciarSesion,
                  labelButton: 'Iniciar Sesion',
                ),
                // Container(
                //   margin: const EdgeInsets.symmetric(horizontal: 25),
                //   child: ElevatedButton(
                //     style: ElevatedButton.styleFrom(
                //         backgroundColor: const Color(0xFF6C63FF),
                //         fixedSize: const Size(double.infinity, 50),
                //         shape: RoundedRectangleBorder(
                //             borderRadius: BorderRadius.circular(8))),
                //     onPressed: () {
                //       iniciarSesion();
                //     },
                //     child: const Center(
                //       child: Text(
                //         'Iniciar Sesion',
                //         style: TextStyle(color: Colors.white, fontSize: 18),
                //       ),
                //     ),
                //   ),
                // ),
                const SizedBox(
                  height: 25,
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
                        ),
                      ),
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
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
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
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'No tienes cuenta?',
                      style: TextStyle(color: Color(0xFF757575), fontSize: 12),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: widget
                          .onTap /*() => {Navigator.pushNamed(context, '/registro')}*/,
                      child: const Text(
                        'Crea una aquí',
                        style: TextStyle(
                            color: Color(0xFF6C63FF),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
