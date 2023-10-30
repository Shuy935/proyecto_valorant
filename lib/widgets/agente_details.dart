import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';

class AgenteDetails extends StatelessWidget {
  final List<Agente>? agente;
  const AgenteDetails({super.key, this.agente});
  
  @override
  Widget build(BuildContext context) {
    final Agente agente = ModalRoute.of(context)?.settings.arguments as Agente;
    return Container(
      child: FlipCardA(agente: agente),
    );
  }
}

class FlipCardA extends StatelessWidget {
  final Agente agente;
  const FlipCardA({super.key, required this.agente});

  @override
  Widget build(BuildContext context) {
    return FlipCard(
        direction: FlipDirection.HORIZONTAL,
        front: Front(agente: agente),
        back: Back(agente: agente));
  }
}

class Front extends StatelessWidget {
  final Agente agente;
  const Front({super.key, required this.agente});

  @override
  Widget build(BuildContext context) {
    String Colores;
    Colores = agente.backgroundGradientColors[1];
    Colores = Colores.substring(0, Colores.length - 2);
    return Column(
      children: [
    Container(
      height: 50,
    ),
    Container(
      color: Color(int.parse("0xFF$Colores")),
      child: FadeInImage(
        placeholder: AssetImage('assets/foto.jpeg'),
        image: NetworkImage(agente.displayIcon),
        height: 250,
      ),
    ),
    Container(height: 15),
    Text(
      'Nombre: ' + agente.displayName,
      style: const TextStyle(
        color: Colors.red,
        fontFamily: 'Valorant',
        fontSize: 30,
      ),
    ),
    Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: Text(
        agente.description,
        style: const TextStyle(
          color: Colors.red,
          fontFamily: 'Valorant',
          fontSize: 15,
        ),
      ),
    ),
      ],
    );
  }
}

class Back extends StatelessWidget {
  final Agente agente;
  const Back({super.key, required this.agente});

  @override
  Widget build(BuildContext context) {
    String Colores;
    Colores = agente.backgroundGradientColors[3];
    Colores = Colores.substring(0, Colores.length - 2);
    return Column(
      children: [
    Container(
      height: 50,
    ),
    Container(
      color: Color(int.parse("0xFF$Colores")),
      child: FadeInImage(
        placeholder: AssetImage('assets/foto.jpeg'),
        image: NetworkImage(agente.displayIcon),
        height: 250,
      ),
    ),
    Container(height: 15),
    Text(
      'Nombre del desarrollador: \n' + agente.developerName,
      style: const TextStyle(
        color: Colors.red,
        fontFamily: 'Valorant',
        fontSize: 20,
      ),
    ),
      ],
    );
  }
}
