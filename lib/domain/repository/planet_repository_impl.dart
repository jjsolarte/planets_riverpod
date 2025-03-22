import 'package:planetas/data/data_source/planet_data_source.dart';
import 'package:planetas/data/models/planet_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'planet_repository.dart';

part 'planet_repository_impl.g.dart';

@riverpod
PlanetRepository planetRepository(ref) =>
    PlanetRepositoryImpl(ref.read(planetDataSourceProvider));

class PlanetRepositoryImpl implements PlanetRepository {
  final PlanetDataSource _dataSource;

  PlanetRepositoryImpl(this._dataSource);

  @override
  Future<List<PlanetModel>> getPlanets() => _dataSource.getPlanets();
}
