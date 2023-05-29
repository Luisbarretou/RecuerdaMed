// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/formularios/formulario_registro.dart';

void main() => runApp(PaginaRegistro());

class PaginaRegistro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: FormularioRegistro(),
      ),
    );
  }
}
