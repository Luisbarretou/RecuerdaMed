import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/pages/pagina_login.dart';
import 'package:recuerdamed/ui/pages/pagina_registro.dart';

class PaginaLoginRegistrarse extends StatefulWidget {
  const PaginaLoginRegistrarse({super.key});

  @override
  State<PaginaLoginRegistrarse> createState() => _PaginaLoginRegistrarseState();
}

class _PaginaLoginRegistrarseState extends State<PaginaLoginRegistrarse> {
  bool mostrarPaginaLogin = true;

  void activarPaginas() {
    setState(() {
      mostrarPaginaLogin = !mostrarPaginaLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (mostrarPaginaLogin) {
      return PaginaLogin(
        onTap: activarPaginas,
      );
    } else {
      return PaginaRegistro(
        onTap: activarPaginas,
      );
    }
  }
}
