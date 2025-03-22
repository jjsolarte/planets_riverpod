import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planetas/data/models/planet_model.dart';
import 'package:planetas/presentation/atom/planet_image.dart';
import 'package:planetas/presentation/organism/gradient_background_organism.dart';
import 'package:planetas/presentation/providers/favorites_provider.dart';

class PlanetDetailScreen extends ConsumerWidget {
  final PlanetModel planet;

  const PlanetDetailScreen({super.key, required this.planet});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(favoritesProvider).contains(planet.name);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          planet.name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.star : Icons.star_border,
              color: Colors.amber,
            ),
            onPressed:
                () => ref
                    .read(favoritesProvider.notifier)
                    .toggleFavorite(planet.name),
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: GradientBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: double.infinity,
                child: PlanetImage(imageUrl: planet.image),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildDetailItem('Masa', '${planet.massKg} kg'),
                      _buildDetailItem(
                        'Distancia',
                        '${planet.orbitDistance} km',
                      ),
                      _buildDetailItem('Moons', '${planet.moons}'),
                      const SizedBox(height: 16),
                      Text(
                        planet.description,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          Text(
            '$title: ',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            value,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ],
      ),
    );
  }
}
