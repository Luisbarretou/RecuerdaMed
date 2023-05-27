import 'package:flutter/material.dart';
import 'package:recuerdamed/ui/principal/estructura.dart';
import 'package:recuerdamed/ui/principal/inicio.dart';
import 'package:recuerdamed/ui/principal/registro.dart';

void main() => runApp(encabezado());

class encabezado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding (
        padding: EdgeInsetsDirectional.fromSTEB(0, 70, 0, 0),
        child: Column (
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding (
              padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 24),
              child: Row (
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (Theme.of(context).brightness == Brightness.dark)
                    Image.asset(
                      'assets/images/',
                      width: 200,
                      height: 130,
                      fit: BoxFit.fitHeight,
                    ),
                  if (!(Theme.of(context).brightness == Brightness.dark))
                    Image.asset(
                      'assets/images/UserComplete.png',
                      width: 200,
                      height: 130,
                      fit: BoxFit.fitHeight,
                    ),
                ],
              ),
            ),
            Expanded (
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0, 0),
                        child: TabBar(
                          isScrollable: true,
                          labelColor: Colors.deepPurpleAccent,
                          unselectedLabelColor:
                          Colors.grey,
                          labelPadding:
                          EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                          labelStyle: TextStyle(
                              fontWeight: FontWeight.bold
                            ),
                          indicatorColor: Colors.deepPurpleAccent,
                          indicatorWeight: 3,
                          tabs: [
                            Tab(
                              text: 'Iniciar Sesión',
                            ),
                            Tab(
                              text: 'Registrarse',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: TextFormField(
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Usuario',
                                          labelStyle: TextStyle(
                                            fontWeight: FontWeight.normal
                                          ),
                                          hintText: 'Ingrese su usuario',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFeff0f1),
                                          contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                        ),
                                        style: TextStyle(
                                          fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Contraseña',
                                          labelStyle: TextStyle(
                                            fontWeight: FontWeight.normal
                                          ),
                                          hintText: 'Ingrese su contraseña',
                                          hintStyle: TextStyle(
                                            fontStyle: FontStyle.normal
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFeff0f1),
                                          contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                        ),
                                        style: TextStyle(
                                          fontWeight: FontWeight.normal
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepPurpleAccent,
                                            fixedSize: const Size(double.infinity, 30),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30)
                                            )
                                        ),
                                        onPressed: () => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => inicio()
                                              )
                                          )
                                        },
                                        child: const Text("Iniciar Sesion")
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: TextFormField(
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Usuario',
                                          labelStyle: TextStyle(
                                            fontStyle: FontStyle.normal
                                          ),
                                          hintText: 'Ingrese su usuario',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFeff0f1),
                                          contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                        ),
                                        style: TextStyle (
                                            fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Contraseña',
                                          labelStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          hintText: 'Ingrese su contraseña',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFeff0f1),
                                          contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                        ),
                                        style:TextStyle(
                                            fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Confirmar Contraseña',
                                          labelStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          hintText: 'Ingrese su contraseña',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFeff0f1),
                                          contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                        ),
                                        style:TextStyle(
                                            fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ),
                                    const SizedBox(height: 30),
                                    ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.deepPurpleAccent,
                                            fixedSize: const Size(double.infinity, 30),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(30)
                                            )
                                        ),
                                        onPressed: () => {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) => registro()
                                              )
                                          )
                                        },
                                        child: const Text("Acceder")
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                              child: SingleChildScrollView(
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 20, 0, 0),
                                      child: TextFormField(
                                        obscureText: false,
                                        decoration: InputDecoration(
                                          labelText: 'Usuario',
                                          labelStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          hintText: 'Ingrese su usuario',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFeff0f1),
                                          contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                        ),
                                        style: TextStyle (
                                            fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Contraseña',
                                          labelStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          hintText: 'Ingrese su contraseña',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFeff0f1),
                                          contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                        ),
                                        style:TextStyle(
                                            fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 12, 0, 0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          labelText: 'Confirmar Contraseña',
                                          labelStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          hintText: 'Ingrese su contraseña',
                                          hintStyle: TextStyle(
                                              fontStyle: FontStyle.normal
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          errorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          focusedErrorBorder: OutlineInputBorder(
                                            borderSide: BorderSide(
                                              color: Color(0x00000000),
                                              width: 1,
                                            ),
                                            borderRadius: BorderRadius.circular(8),
                                          ),
                                          filled: true,
                                          fillColor: Color(0xFFeff0f1),
                                          contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20, 24, 20, 24),
                                        ),
                                        style:TextStyle(
                                            fontStyle: FontStyle.normal
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
            )
          ],
        ),
      )
    );
  }
}
