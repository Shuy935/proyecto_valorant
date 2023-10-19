import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_valorant/models/agente.dart';

class SwipperA extends StatelessWidget {
  final List<Agente> agentes;
  const SwipperA({super.key, required this.agentes});

  @override
  Widget build(BuildContext context) {
    final size =
        MediaQuery.of(context).size; //almacenas el tamaño de la pantalla
    return Container(
      width: double.infinity, //para que el contenedor sera el ancho de pantalla
      height: size.height * 0.5,
      child: Swiper(
          itemCount: agentes.length,
          layout: SwiperLayout.STACK, //forma en que se comporta
          itemWidth: size.width * 0.5,
          itemHeight: size.height * 0.4,
          itemBuilder: (_, int index) {
            final agente = agentes[index];
            //print(movie.posterPath);
            //print(movie.fullPosterImg);
            return GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, 'details', arguments: agente),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                    20), //Para hacer las esquinas redondeadas
                child: FadeInImage(
                  placeholder: const AssetImage('assets/foto.jpeg'),
                  image: NetworkImage(agente.displayIcon),
                ),
              ),
            );
          }),
    );
  }
}