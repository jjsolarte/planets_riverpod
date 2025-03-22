import 'package:flutter/material.dart';
import 'package:planetas/data/models/planet_model.dart';
import 'package:planetas/presentation/atom/planet_image.dart';
import 'package:planetas/presentation/molecule/planet_info_overlay.dart';

class PlanetCard extends StatelessWidget {
  final PlanetModel planet;
  final VoidCallback onTap;

  const PlanetCard({
    super.key,
    required this.planet,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        margin: const EdgeInsets.all(8.0),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        child: Stack(
          children: [
            PlanetImage(imageUrl: planet.image),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: PlanetInfoOverlay(planet: planet),
            ),
          ],
        ),
      ),
    );
  }
}
