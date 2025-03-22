import 'package:planetas/data/models/planet_model.dart';

abstract class PlanetRepository {
  Future<List<PlanetModel>> getPlanets();
}
