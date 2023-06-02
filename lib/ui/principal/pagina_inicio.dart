// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PaginaInicio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE0E0E0),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //Title
                Text(
                  'RecuerdaMed',
                  style: GoogleFonts.lobster(fontSize: 50, color: Color(0xFF6C63FF)),
                ),
                SizedBox(
                  height: 60,
                ),
                //Logo
                Image.asset(
                  'assets/images/medicine.png',
                  width: 250,
                ),
                SizedBox(height: 50),
                //Boton Iniciar como Invitado
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 25),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF6C63FF),
                        fixedSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8))),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Center(
                      child: Text(
                        'Iniciar como Invitado',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 25),
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
                        'Iniciar con Cuenta',
                        style:
                            TextStyle(color: Color(0xFF6C63FF), fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
