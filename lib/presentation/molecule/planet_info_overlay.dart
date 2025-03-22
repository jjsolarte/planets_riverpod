import 'package:flutter/material.dart';
import 'package:planetas/data/models/planet_model.dart';
import 'package:planetas/presentation/atom/planet_info_text.dart';
import 'package:planetas/presentation/atom/planet_title_text.dart';

class PlanetInfoOverlay extends StatelessWidget {
  final PlanetModel planet;

  const PlanetInfoOverlay({super.key, required this.planet});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.5),
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16.0),
          bottomRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PlanetTitleText(title: planet.name),
          const SizedBox(height: 4),
          PlanetInfoText(
            text: 'Masa: ${planet.massKg} kg | Distancia: ${planet.orbitDistance} km',
          ),
        ],
      ),
    );
  }
}
