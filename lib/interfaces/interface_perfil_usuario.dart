import 'package:flutter/material.dart';

void main() => runApp(InterfacePerfilUsuario());

class InterfacePerfilUsuario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF718DEC),
        title:
            Center(child: Text('Peril de Usuario', textAlign: TextAlign.end)),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 15, top: 20, right: 15),
        child: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: ListView(
            children: [
              Center(
                child: Stack(
                  children: [
                    Container(
                      width: 130,
                      height: 130,
                      decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1))
                          ],
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                                'https://cdn.pixabay.com/photo/2016/02/18/03/21/danbo-1206480_1280.jpg'),
                          )),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              _cuadroTexto('Nombres y Apellidos', TextInputType.name, false),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                      width: MediaQuery.of(context).size.width * 0.46,
                      child:
                          _cuadroTexto('Telefono', TextInputType.phone, false)),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: _cuadroTexto('Edad', TextInputType.number, false),
                  )
                ],
              ),
              SizedBox(height: 15),
              _cuadroTexto(
                  'Contraseña Actual', TextInputType.visiblePassword, true),
              SizedBox(height: 15),
              _cuadroTexto(
                  'Nueva Contraseña', TextInputType.visiblePassword, true),
              SizedBox(height: 15),
              _cuadroTexto(
                  'Confirmar Contraseña', TextInputType.visiblePassword, true),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.46,
                    child: OutlinedButton(
                      onPressed: () {},
                      child: Text(
                        'CANCELAR',
                        style: TextStyle(letterSpacing: 1),
                      ),
                    ),
                  ),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.46,
                      child: ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'GUARDAR',
                            style: TextStyle(letterSpacing: 1),
                          )))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _cuadroTexto(text, TextInputType tipo, bool contra) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5),
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: TextFormField(
        obscureText: contra,
        keyboardType: tipo,
        decoration:
            InputDecoration(border: OutlineInputBorder(), labelText: text),
      ),
    );
  }
}
