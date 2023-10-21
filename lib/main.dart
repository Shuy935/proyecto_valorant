import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:proyecto_valorant/providers/provider.dart';
import 'package:proyecto_valorant/screens/HomePage.dart';

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
        home: HomePage(),
      ),
    ),
  );
}
