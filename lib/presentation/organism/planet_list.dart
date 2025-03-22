import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planetas/core/router/app_routes.dart';
import 'package:planetas/data/models/planet_model.dart';
import 'package:planetas/presentation/organism/planet_card.dart';

class PlanetsList extends StatelessWidget {
  final List<PlanetModel> planets;

  const PlanetsList({super.key, required this.planets});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: planets.length,
      itemBuilder: (context, index) {
        final planet = planets[index];
        return PlanetCard(
          planet: planet,
          onTap: () => context.push(
            AppRoutes.planetDetail,
            extra: planet,
          ),
        );
      },
    );
  }
}
