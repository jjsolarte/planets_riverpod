import 'package:planetas/data/models/planet_model.dart';
import 'package:planetas/domain/use_case/planet_use_case.dart';
import 'package:planetas/presentation/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'planet_provider.g.dart';

@riverpod
class SearchQuery extends _$SearchQuery {
  @override
  String build() => '';

  void updateQuery(String newQuery) => state = newQuery;
}

@riverpod
AsyncValue<List<PlanetModel>> filteredPlanets(FilteredPlanetsRef ref) {
  final query = ref.watch(searchQueryProvider).toLowerCase();
  final planetsAsync = ref.watch(getPlanetsProvider);

  return planetsAsync.map(
    data: (data) {
      final planets = data.value;
      if (query.isEmpty) return AsyncValue.data(planets);

      final filtered = planets.where((planet) {
        return planet.name.toLowerCase().contains(query) ||
            planet.massKg.toString().contains(query) ||
            planet.orbitDistance.toString().contains(query) ||
            planet.description.toLowerCase().contains(query);
      }).toList();

      return AsyncValue.data(filtered);
    },
    loading: (loading) => const AsyncValue.loading(),
    error: (error) => AsyncError('error', error.stackTrace),
  );
}

@riverpod
List<PlanetModel> favoritePlanets(FavoritePlanetsRef ref) {
  final favorites = ref.watch(favoritesProvider); // List<String>
  final allPlanets = ref.watch(getPlanetsProvider).value ?? [];

  return allPlanets.where((planet) =>
      favorites.contains(planet.name)
  ).toList();
}

