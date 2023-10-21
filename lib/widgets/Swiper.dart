import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_valorant/models/agente.dart';

class SwipperA extends StatelessWidget {
  final List<Agente>? agentes;
  const SwipperA({Key? key, this.agentes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (agentes == null) {
      print('Llego vacio');
      return Center(child: CircularProgressIndicator());
    } else {
      final size = MediaQuery.of(context).size;
      return Container(
        width: double.infinity,
        height: size.height * 0.5,
        child: Swiper(
          itemCount: agentes?.length ?? 0,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.5,
          itemHeight: size.height * 0.4,
          itemBuilder: (_, int index) {
            final agente = agentes![index];
            return GestureDetector(
              onTap: () {
                // Agregar lógica para mostrar detalles del agente
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: FadeInImage(
                  placeholder: AssetImage('assets/foto.jpeg'),
                  image: NetworkImage(agente.displayIcon),
                ),
              ),
            );
          },
        ),
      );
    }
  }
}
