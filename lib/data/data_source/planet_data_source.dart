import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../core/providers/dio_provider.dart';
import '../models/planet_model.dart';

part 'planet_data_source.g.dart';

@riverpod
PlanetDataSource planetDataSource(ref) => PlanetDataSource(ref.read(dioProvider));

class PlanetDataSource {
  final Dio _dio;

  PlanetDataSource(this._dio);

  Future<List<PlanetModel>> getPlanets() async {
    final response = await _dio.get(
        'https://us-central1-a-academia-espacial.cloudfunctions.net/planets'
    );
    return (response.data['data'] as List)
        .map((json) => PlanetModel.fromJson(json))
        .toList();
  }
}
