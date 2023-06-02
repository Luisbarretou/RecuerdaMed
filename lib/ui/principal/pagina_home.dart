// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/menu/menu_lateral.dart';

void main() => runApp(PaginaHome());

class PaginaHome extends StatelessWidget {
  PaginaHome({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  void cerrarSesion() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const MenuLateral(),
        appBar: AppBar(
          backgroundColor: Color(0xFF718DEC),
          title: Center(
            child: Text('RecuerdaMed', textAlign: TextAlign.end),
          ),
          actions: [
            IconButton(
              onPressed: cerrarSesion,
              icon: Icon(Icons.logout_rounded),
            ),
          ],
        ),
        body: Center(
          child:
              Text("Bievenido: " + user.email!, style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
