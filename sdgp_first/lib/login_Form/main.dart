import 'package:flutter/material.dart';
import 'package:login_form/patientDetails.dart';

void main() {
  runApp(PatientDetailsApp());
}
class PatientDetailsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Patient Details Form',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PatientDetailsForm(),
    );
  }
}


