import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:outlined_text/outlined_text.dart';
import 'package:proyecto_valorant/models/agente.dart';

class SwipperA extends StatelessWidget {
  final List<Agente>? agentes;
  const SwipperA({Key? key, this.agentes}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (agentes == null) {
      return CircularProgressIndicator();
    } else {
      final size = MediaQuery.of(context).size;
      return Container(
        width: double.infinity,
        height: size.height * 0.8,
        child: Swiper(
          itemCount: agentes?.length ?? 0,
          layout: SwiperLayout.STACK,
          itemWidth: size.width * 0.5,
          itemHeight: size.height * 0.4,
          itemBuilder: (_, int index) {
            final agente = agentes![index];
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'armas', arguments: '');
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: FadeInImage(
                      placeholder: AssetImage('assets/foto.jpeg'),
                      image: NetworkImage(agente.displayIcon),
                    ),
                  ),
                  Positioned(
                    top: 270,
                    child: OutlinedText(
                      text: Text(
                        agente.displayName,
                        style: const TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.red,
                          fontFamily: 'Valorant',
                        ),
                      ),
                      strokes: [
                        OutlinedTextStroke(color: const Color.fromARGB(255, 0, 0, 0), width: 4),
                      ],
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    }
  }
}
