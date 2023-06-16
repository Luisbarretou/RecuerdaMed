import 'package:flutter/material.dart';

class InterfaceReceta extends StatefulWidget {
  const InterfaceReceta({super.key});

  @override
  State<InterfaceReceta> createState() => _inicioState();
}

class _inicioState extends State<InterfaceReceta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xFF718DEC),
        title: Center(child: Text('Receta', textAlign: TextAlign.end)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            // app bar
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // nombre
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 8),
                      Text(
                        'Bienvenido',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Receta Medica',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  //Perfil
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(Icons.person),
                  )
                ],
              ),
            ),

            // Card -> DATOS DEL PACIENTE
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.indigo[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    //  Image.asset(
                    // 'lib/images/paciente.png',
                    //     height: 40,
                    // ),
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple[200],
                    ),
                    SizedBox(width: 25),
                    // animacion

                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'DATOS DEL PACIENTE',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          SizedBox(height: 8),
                          Text(' Jesus Mantilla: 23'),
                          Text(' Sexo: Masculino'),
                          Text(' Plan: OSDE Binario(40%)'),
                          Text(
                            ' Observaciones: ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text('   - Dolor de Garganta '),
                          Text('   - Dolor de Cuerpo '),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 25),
            // Barra sobre el doctor
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: InputBorder.none,
                    hintText: 'Ingrese Doctor',
                  ),
                ),
              ),
            ),

            // Card -> DATOS DE LA RECETA
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.indigo[200],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    /*  Image.asset(
                  'lib/images/receta.png',
                  height: 40,
                ), */
                    Container(
                      height: 100,
                      width: 100,
                      color: Colors.deepPurple[200],
                    ),
                    SizedBox(width: 25),
                    // animacion
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 3),
                          Text(
                            'DATOS DE LA RECETA',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 22),
                          ),
                          SizedBox(height: 8),
                          Text(
                            ' Fecha de la receta',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text('  02/05/2023'),
                          Text(
                            ' FIEBRE ALTA*',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text(
                            '   Medicamentos ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text(
                            '    - Panadol 500 Mg Extra Fuerte Tabletas - Oral ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text('       Tomar 1 tab cada 8 horas por 4 dias'),
                          Text(
                            '    - Voltaren Emulgel AI 1.16% Gel Topica ',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                          Text('       Aplicar en zona lumbar'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Clinica San Pablo - Trujillo',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
