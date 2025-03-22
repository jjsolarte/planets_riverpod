import 'package:flutter/material.dart';
import 'package:planetas/presentation/feature/home/widget/stars_layer_widget.dart';
import 'package:planetas/presentation/organism/gradient_background_organism.dart';

class PlanetImage extends StatelessWidget {
  final String imageUrl;

  const PlanetImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.network(
        imageUrl,
        height: 200,
        width: double.infinity,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.transparent
            ),
            child: Stack(
              children: [
                GradientBackground(),
                StarsLayer(),
              ],
            ),
          );
        },
      ),
    );
  }
}
