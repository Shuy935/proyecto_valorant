import 'dart:convert';
import 'package:proyecto_valorant/models/models.dart';

AgenteResponse welcomeFromJson(String str) => AgenteResponse.fromJson(json.decode(str));

String welcomeToJson(AgenteResponse data) => json.encode(data.toJson());

class AgenteResponse {
    int status;
    List<Agente> data;

    AgenteResponse({
        required this.status,
        required this.data,
    });

    factory AgenteResponse.fromJson(Map<String, dynamic> json) => AgenteResponse(
        status: json["status"],
        data: List<Agente>.from(json["data"].map((x) => Agente.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}
