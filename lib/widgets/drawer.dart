import 'package:flutter/material.dart';

class DrawerA extends StatelessWidget {
  final VoidCallback onAgenteClick;

  DrawerA({required this.onAgenteClick});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            child: Text(
              'VALORANT',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Valorant',
                color: Colors.red,
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Agentes',
            style: TextStyle(
              fontFamily: 'valorant',
              color: Color.fromARGB(255, 178, 6, 6),
              fontSize: 24.0,
            ),
          ),
          GestureDetector(
            onTap: onAgenteClick,
            child: FadeInImage(
              placeholder: AssetImage('assets/foto.jpeg'),
              image: AssetImage('assets/Agente.png'),
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Armas',
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 178, 6, 6),
              fontFamily: 'Valorant',
            ),
          ),
          GestureDetector(
            onTap: () {
              //TODO:
            },
            child: FadeInImage(
              placeholder: AssetImage('assets/foto.jpeg'),
              image: AssetImage('assets/Weapons.png'),
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Equipamento',
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 178, 6, 6),
              fontFamily: 'Valorant',
            ),
          ),
          GestureDetector(
            onTap: () {
              //TODO:
            },
            child: FadeInImage(
              placeholder: AssetImage('assets/foto.jpeg'),
              image: AssetImage('assets/Gear.png'),
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Modos de juego',
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 178, 6, 6),
              fontFamily: 'Valorant',
            ),
          ),
          GestureDetector(
            onTap: () {
              //TODO:
            },
            child: FadeInImage(
              placeholder: AssetImage('assets/foto.jpeg'),
              image: AssetImage('assets/Gamemode.png'),
              height: 100,
              width: 100,
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Mapas',
            style: TextStyle(
              fontSize: 24.0,
              color: Color.fromARGB(255, 178, 6, 6),
              fontFamily: 'Valorant',
            ),
          ),
          GestureDetector(
            onTap: () {
              //TODO:
            },
            child: FadeInImage(
              placeholder: AssetImage('assets/foto.jpeg'),
              image: AssetImage('assets/Map.png'),
              height: 100,
              width: 100,
            ),
          ),
        ],
      ),
    );
  }
}
