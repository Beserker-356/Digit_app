import 'package:digit_app/Pages/Citizen/c_home.dart';
import 'package:digit_app/Pages/Citizen/citizen_home.dart';
import 'package:digit_app/Pages/Citizen/citizen_login.dart';
import 'package:digit_app/Pages/Citizen/create_birth_reg.dart';
import 'package:digit_app/Pages/Citizen/services.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Citizen_Login(),
    );
  }
}
