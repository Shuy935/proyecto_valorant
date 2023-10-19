import 'package:flutter/material.dart';
import 'package:proyecto_valorant/models/agente.dart';
import 'package:proyecto_valorant/screens/HomePage.dart';

void main() {
  runApp(const Valorant_Proyect());
}

class Valorant_Proyect extends StatelessWidget {
  const Valorant_Proyect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Valorant',
      initialRoute: 'home',
      routes: {'home': (_) => HomePage(),},
    );
  }
}