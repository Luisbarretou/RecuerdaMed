// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:recuerdamed/interfaces/interface_control_medicacion.dart';
import 'package:recuerdamed/interfaces/interface_farmacia_registrar.dart';
import 'package:recuerdamed/interfaces/interface_perfil_usuario.dart';
import 'package:recuerdamed/interfaces/interface_receta_form.dart';

void main() => runApp(const MenuLateral());

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFFD1D8F0)),
            child: Image.asset('assets/images/portada.png'),
          ),
          _itemMenu(
              context,
              Icon(Icons.account_circle_outlined, color: Color(0xFF6A7DBA)),
              'Cuenta',
              MaterialPageRoute(
                  builder: (BuildContext context) => InterfacePerfilUsuario())),
          _itemMenu(
              context,
              Icon(Icons.assignment_outlined, color: Color(0xFF6A7DBA)),
              'Mi Receta Medica',
              MaterialPageRoute(
                  builder: (BuildContext context) => InterfaceReceta())),
          _itemMenu(
              context,
              Icon(Icons.analytics_outlined, color: Color(0xFF6A7DBA)),
              'Control',
              MaterialPageRoute(
                  builder: (BuildContext context) => PatientControlPage())),
          /*_itemMenu(
              context,
              Icon(Icons.article_outlined, color: Color(0xFF6A7DBA)),
              'Reportes',
              MaterialPageRoute(
                  builder: (BuildContext context) => InterfacePerfilUsuario())),*/
          _itemMenu(
              context,
              Icon(Icons.add_business_outlined, color: Color(0xFF6A7DBA)),
              'Añadir Farmacia',
              MaterialPageRoute(builder: (BuildContext context) => FormCard())),
          _itemMenu(
              context,
              Icon(Icons.logout_outlined, color: Color(0xFF6A7DBA)),
              'Cerrar Sesión',
              MaterialPageRoute(
                  builder: (BuildContext context) => InterfacePerfilUsuario())),
        ],
      ),
    );
  }

  Container _itemMenu(
      BuildContext context, Icon icono, text, MaterialPageRoute clase) {
    return Container(
      padding: EdgeInsets.only(left: 5, top: 20, right: 15),
      child: Row(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            child: icono,
          ),
          Container(
              width: MediaQuery.of(context).size.width * 0.3,
              child: GestureDetector(
                child: Text(
                  text,
                  style: TextStyle(color: Color(0xFF6A7DBA)),
                ),
                onTap: () {
                  Navigator.of(context).push(clase);
                },
              )),
        ],
      ),
    );
  }
}
