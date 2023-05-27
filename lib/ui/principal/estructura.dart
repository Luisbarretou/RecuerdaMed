import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/principal/encabezado.dart';

void main() => runApp(estructura());

class estructura extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estructura',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Iniciar Sesión'),
        ),
        body: Center(
          child: Container(
            child: encabezado(),
          ),
        ),
      ),
    );
  }
}
