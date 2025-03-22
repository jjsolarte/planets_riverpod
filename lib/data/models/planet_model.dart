class PlanetModel {
  final String id;
  final String name;
  final String image;
  final String massKg;
  final double distance;
  final double orbitDistance;
  final String description;
  final int moons;

  PlanetModel({
    required this.id,
    required this.name,
    required this.image,
    required this.massKg,
    required this.distance,
    required this.orbitDistance,
    required this.description,
    required this.moons,
  });

  factory PlanetModel.fromJson(Map<String, dynamic> json) => PlanetModel(
    id: json['id'] ?? '',
    name: json['name'] ?? '',
    image: json['image'] ?? '',
    massKg: json['mass_kg'] ?? '',
    distance: (json['distance'] as num?)?.toDouble() ?? 0.0,
    orbitDistance:(json['orbital_distance_km'] as num?)?.toDouble() ?? 0.0,
    description: json['description'] ?? '',
    moons: (json['moons'] as num?)?.toInt() ?? 0,
  );
}
