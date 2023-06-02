import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/pages/auth_page.dart';
import 'package:recuerdamed/ui/principal/pagina_home.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      // ignore: prefer_const_constructors
      options: FirebaseOptions(
          apiKey: 'AIzaSyCSE2TAHa4xKwuN2bWvvz8CuYoZsrLzDWo',
          appId: '1:205518094323:android:01b9fa87c02298b3ac9c86',
          messagingSenderId: '205518094323',
          projectId: 'recuerdamed-20587'),
      name: 'RecuerdaMed');

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RecuerdaMed',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => AuthPage(),
        // '/login': (context) => PaginaLogin(),
        // '/registro': (context) => PaginaRegistro(),
        '/home': (context) => PaginaHome()
      },
    );
  }
}
