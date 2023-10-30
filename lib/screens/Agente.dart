import 'package:flutter/material.dart';
import 'package:proyecto_valorant/models/agente.dart';
import 'package:proyecto_valorant/widgets/agente_details.dart';
import 'package:proyecto_valorant/widgets/habilidadesA.dart';

class AgenteS extends StatelessWidget {
  final List<Agente>? agente;
  const AgenteS({super.key, this.agente});

  @override
  Widget build(BuildContext context) {
    final List<Widget> _tabs = [
      Tab(text: 'Descripcion'),
      Tab(text: 'Habilidades'),
      Tab(text: '1'),
      Tab(text: '1'),
    ];
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        body: Stack(
          children: [
            DefaultTabController(
              length: _tabs.length,
              child: Scaffold(
                backgroundColor: Colors.black,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.black,
                  title: Text('Agente'),
                  bottom: TabBar(
                    tabs: _tabs,
                    labelColor: Colors.black,
                  ),
                ),
                body: TabBarView(
                  children: [
                    AgenteDetails(),
                    HabilidadesA(),
                    Text(''),
                    Text(''),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
