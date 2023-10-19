import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:proyecto_valorant/models/agente.dart';
import 'package:proyecto_valorant/models/agente_response.dart';

class AgenteProvider extends ChangeNotifier {
  String _baseUrl = 'valorant-api.com';
  String _language = 'es-MX';
  bool _isPlayableCharacter = true;

  List<Agente> agente =[];

  AgenteProvider() {
    getAgente();
  }

  getAgente() async {
    var url = Uri.https(_baseUrl, 'v1/agents/',
        {'language': _language, 'isPlayableCharacter': true});

    final response = await http.get(url);
    final Map<String, dynamic> decodeData = json.decode(response.body);
    //print(decodeData);
    print(response.body);
    final agenteResponse = AgenteResponse.fromJson(response.headers);
    final Agente = agenteResponse.data;
    //Le comunicamos a todos los widgets que estan escuchando que se cambio la data por lo tanto se tienen que redibujar
    notifyListeners();
  }
}