import 'package:flutter/material.dart';
import 'package:proyecto_valorant/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key,});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Image.asset('assets/logo.png'),
      ),
      drawer: DrawerA(),
    );
  }
}
