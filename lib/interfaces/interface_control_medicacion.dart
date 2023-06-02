import 'package:flutter/material.dart';

void main() => runApp(PatientControlPage());

class PatientControlPage extends StatelessWidget {
  final int remainingDays = 30;
  final bool isTakingMedication = false;
  final List<String> medications = [
    'Medicamento Mañana',
    'Medicamento Tarde',
    'Medicamento Noche',
  ];
  final String selectedMedication = '';
  final String additionalSymptoms = '';
  final bool hasRecurrentSymptoms = false;
  final int treatmentDays = 156;
  final String attendingDoctor = 'Dr. John Doe';
  final String dailyPrescription = 'Tomar medicamento con el desayuno';
  final List<String> scheduledAppointments = [
    'Cita 02 de junio del 2023',
    'Cita 22 de junio del 2023',
    'Cita 15 de julio del 2023',
  ];
  final String selectedAppointment = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control de Medicamentos'),
        elevation: 0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: ListView(
          children: <Widget>[
            if (!isTakingMedication) ...[
              ListTile(
                title: Text(
                  'Seleccionar medicamento del tratamiento:',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Wrap(
                spacing: 8.0,
                children: medications.map((medication) {
                  return ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      medication,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.blue,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      padding: EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 8.0,
                      ),
                    ),
                  );
                }).toList(),
              ),
            ],
            if (isTakingMedication) ...[
              ListTile(
                title: Text(
                  'Tomando actualmente: $selectedMedication',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  'Deje de tomar medicamentos',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
              ),
            ],
            ListTile(
              title: Text(
                'Sintomas que presente durante el tratamiento:',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            TextFormField(
              initialValue: additionalSymptoms,
              decoration: InputDecoration(
                labelText: 'Escribir:',
                border: OutlineInputBorder(),
              ),
            ),
            ListTile(
              title: Text(
                'Síntomas recurrentes:',
                style: TextStyle(fontSize: 16.0),
              ),
              trailing: Switch(
                value: hasRecurrentSymptoms,
                onChanged: (value) {},
              ),
            ),
            ListTile(
              title: Text(
                'Días de tratamiento:',
                style: TextStyle(fontSize: 16.0),
              ),
              trailing: SizedBox(
                width: 100.0,
                child: Text(
                  treatmentDays.toString(),
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Asistencia médica:',
                style: TextStyle(fontSize: 16.0),
              ),
              trailing: SizedBox(
                width: 200.0,
                child: Text(
                  attendingDoctor,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Receta Diaria:',
                style: TextStyle(fontSize: 16.0),
              ),
              trailing: SizedBox(
                width: 200.0,
                child: Text(
                  dailyPrescription,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Citas Programadas:',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
            Wrap(
              spacing: 8.0,
              children: scheduledAppointments.map((appointment) {
                return ChoiceChip(
                  label: Text(appointment),
                  selected: selectedAppointment == appointment,
                  onSelected: (selected) {},
                );
              }).toList(),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                'Siguiente control',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
