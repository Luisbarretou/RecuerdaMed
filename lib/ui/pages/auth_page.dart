import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/pages/pagina_login_registrarse.dart';
import 'package:recuerdamed/ui/principal/pagina_home.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return PaginaHome();
          } else {
            return PaginaLoginRegistrarse();
          }
        },
      ),
    );
  }
}
