import 'package:flutter/material.dart';

void main() => runApp(registro());

class registro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        body: const Center(
          child: Text('Registrar datos adicionales'),
        ),
      ),
    );
  }
}
