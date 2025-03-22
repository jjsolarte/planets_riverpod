import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planetas/presentation/atom/empty_message.dart';
import 'package:planetas/presentation/atom/error_message.dart';
import 'package:planetas/presentation/atom/loading_indicator.dart';
import 'package:planetas/presentation/organism/planet_list.dart';

import '../providers/planet_provider.dart';

class PlanetsContent extends ConsumerWidget {
  const PlanetsContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planetsAsync = ref.watch(filteredPlanetsProvider);

    return Expanded(
      child: planetsAsync.when(
        loading: () => const LoadingIndicator(),
        error: (error, stack) => ErrorMessage(message: error.toString()),
        data: (planets) => planets.isEmpty
            ? const EmptyMessage(message: 'No se encontraron planetas')
            : PlanetsList(planets: planets),
      ),
    );
  }
}
