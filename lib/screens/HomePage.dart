import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_valorant/providers/provider.dart';
import 'package:proyecto_valorant/widgets/Swiper.dart';
import 'package:proyecto_valorant/widgets/drawer.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool mostrarSwiper = false;

  @override
  Widget build(BuildContext context) {
    final agentesProvider = Provider.of<AgenteProvider>(context);
    final agentes = agentesProvider.agentes;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: mostrarSwiper ? SwipperA(agentes: agentes) : Image.asset('assets/logo.png'),
      ),
      drawer: DrawerA(
        onAgenteClick: () {
          setState(() {
            mostrarSwiper = true;
          });
        },
      ),
    );
  }
}
