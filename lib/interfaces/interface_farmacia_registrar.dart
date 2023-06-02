import 'package:flutter/material.dart';

class FormCard extends StatefulWidget {
  const FormCard({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _FormCardState createState() => _FormCardState();
}

class _FormCardState extends State<FormCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset('assets/images/farmacia.jpg'),
              const SizedBox(
                height: 20,
              ),
              _inputNombre(),
              SizedBox(
                height: 10,
              ),
              _inputCard(),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: _inputCod(),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: _inputDate(),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.all(15),
                width: MediaQuery.of(context).size.width - 30,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Registrar"),
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }

  Container _inputNombre() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Nombre de la Farmacia", border: InputBorder.none),
      ),
    );
  }

  Container _inputCard() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: "Nombre del Dueño", border: InputBorder.none),
      ),
    );
  }

  Container _inputDate() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration:
            InputDecoration(hintText: "Fecha", border: InputBorder.none),
      ),
    );
  }

  Container _inputCod() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.grey)),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        decoration:
            InputDecoration(hintText: "Codigo", border: InputBorder.none),
      ),
    );
  }
}
