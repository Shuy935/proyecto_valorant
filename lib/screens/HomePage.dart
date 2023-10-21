import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_valorant/providers/provider.dart';
import 'package:proyecto_valorant/widgets/Swiper.dart';
import 'package:proyecto_valorant/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

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
        child: SwipperA(
            agentes: agentes,
          ),
      ),
      drawer: DrawerA(),
    );
  }
}