// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recuerdamed/components/my_textfield.dart';

void main() => runApp(PaginaRegistro());

class PaginaRegistro extends StatelessWidget {
  //Edicion de texto controller
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/certificate.png',
                  width: 200,
                ),
                SizedBox(height: 20),
                //Texto Usuario
                MyTextField(
                  controller: usernameController,
                  hintText: 'Digite usuario',
                  obscureText: false
                ),
                SizedBox(height: 10),
                //Texto Contraseña
                MyTextField(
                  controller: passwordController,
                  hintText: 'Digite una contraseña',
                  obscureText: true
                ),
                SizedBox(height: 10),
                //Texto Confirmar Contraseña
                MyTextField(
                  controller: confirmPasswordController,
                  hintText: 'Confirme la contraseña',
                  obscureText: true
                ),
                SizedBox(height: 50),
                //Boton Registrarse
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        side: BorderSide(width: 2, color: Color(0xFF6C63FF)),
                        fixedSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    child: const Center(
                      child: Text(
                        'Registrarse',
                        style:
                            TextStyle(color: Color(0xFF6C63FF), fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        )
      ),
    );
  }
}
