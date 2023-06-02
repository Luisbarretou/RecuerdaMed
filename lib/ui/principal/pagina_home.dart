// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/menu/menu_lateral.dart';
import 'package:recuerdamed/ui/principal/pagina_inicio.dart';

void main() => runApp(PaginaHome());

class PaginaHome extends StatefulWidget {
  PaginaHome({super.key});

  @override
  State<PaginaHome> createState() => _PaginaHomeState();
}

class _PaginaHomeState extends State<PaginaHome> {
  String message = '';

  @override
  void initState() {
    super.initState();
    estaLogueado();
  }

  void estaLogueado() {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      String username = user.displayName ?? user.email ?? 'Usuario';
      setState(() {
        message = 'Bienvenido: $username';
      });
    } else {
      setState(() {
        message = 'Bienvenido invitado';
      });
    }
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
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaginaInicio()));
              },
              icon: Icon(Icons.logout_rounded),
            ),
          ],
        ),
        body: Center(
          child:
              Text(message /*+ user.email!*/, style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}
