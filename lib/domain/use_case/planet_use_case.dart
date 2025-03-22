import 'package:planetas/data/models/planet_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../repository/planet_repository_impl.dart';

part 'planet_use_case.g.dart';

@riverpod
Future<List<PlanetModel>> getPlanets(ref) async {
  final repository = ref.read(planetRepositoryProvider);
  return repository.getPlanets();
}
