import 'package:flutter/material.dart';

void main() => runApp(const MenuLateral());

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: const BoxDecoration(color: Color(0xFFD1D8F0)),
            child: Image.asset('assets/images/portada.png'),
          ),
          const ListTile(
            leading:
                Icon(Icons.account_circle_outlined, color: Color(0xFF6A7DBA)),
            title: Text(
              'Cuenta',
              style: TextStyle(color: Color(0xFF6A7DBA)),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.assignment_outlined, color: Color(0xFF6A7DBA)),
            title: Text(
              'Mi Receta Medica',
              style: TextStyle(color: Color(0xFF6A7DBA)),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.analytics_outlined, color: Color(0xFF6A7DBA)),
            title: Text(
              'Control',
              style: TextStyle(color: Color(0xFF6A7DBA)),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.article_outlined, color: Color(0xFF6A7DBA)),
            title: Text(
              'Reportes',
              style: TextStyle(color: Color(0xFF6A7DBA)),
            ),
          ),
          const ListTile(
            leading:
                Icon(Icons.add_business_outlined, color: Color(0xFF6A7DBA)),
            title: Text(
              'Añadir Farmacia',
              style: TextStyle(color: Color(0xFF6A7DBA)),
            ),
          ),
          const ListTile(
            leading: Icon(Icons.logout_outlined, color: Color(0xFF6A7DBA)),
            title: Text(
              'Cerrar Sesión',
              style: TextStyle(color: Color(0xFF6A7DBA)),
            ),
          ),
        ],
      ),
    );
  }
}
