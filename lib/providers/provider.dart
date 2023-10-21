import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto_valorant/models/agente.dart'; // Importa la librería http

class AgenteProvider extends ChangeNotifier {
  String _baseUrl = 'https://valorant-api.com/v1/agents'; // Reemplaza con la URL de tu API
  String _language = 'es-MX';
  bool _isPlayableCharacter = true;

  List<Agente> agentes = [];

  AgenteProvider() {
    getAgentes();
  }

  // Función para obtener agentes desde la API
  Future<void> getAgentes() async {
    final url = Uri.parse('$_baseUrl?language=$_language&isPlayableCharacter=$_isPlayableCharacter');

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final decodedData = json.decode(response.body);
      // Parsea los datos y agrega agentes a la lista
      agentes = (decodedData['data'] as List).map((item) => Agente.fromJson(item)).toList();
      notifyListeners(); // Notifica a los oyentes que los datos se han actualizado
    } else {
      // Si la solicitud no fue exitosa, maneja el error de acuerdo a tus necesidades
      print('Error al obtener los agentes. Código de respuesta: ${response.statusCode}');
    }
  }
}
