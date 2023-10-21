import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_valorant/providers/provider.dart';
import 'package:proyecto_valorant/screens/screens.dart';


void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AgenteProvider>(
          create: (_) => AgenteProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'peliculas',
        initialRoute: 'home',
        routes: {'home': (_) => HomePage(), 'agente': (_) => AgenteS(), 'armas': (_) => Armas(), 'gear': (_) => Equipamento(),
        'mapa': (_) => Mapa(), 'mode': (_) => Modo()},
      ),
    ),
  );
}
