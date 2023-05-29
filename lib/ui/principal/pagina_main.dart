// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/menu/menu_lateral.dart';

void main() => runApp(PaginaHome());

class PaginaHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const MenuLateral(),
        appBar: AppBar(
          backgroundColor: Color(0xFF718DEC),
          title: Center(child: Text('RecuerdaMed', textAlign: TextAlign.end)),
        ),
        body: Center(
          child: Text("Inicio", style: TextStyle(fontSize: 40)),
        ),
      ),
    );
  }
}