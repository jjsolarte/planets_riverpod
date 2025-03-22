// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'planet_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredPlanetsHash() => r'19637e9ea98dd9ff5b7068d02c35ee8a570a1724';

/// See also [filteredPlanets].
@ProviderFor(filteredPlanets)
final filteredPlanetsProvider =
    AutoDisposeProvider<AsyncValue<List<PlanetModel>>>.internal(
      filteredPlanets,
      name: r'filteredPlanetsProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$filteredPlanetsHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FilteredPlanetsRef =
    AutoDisposeProviderRef<AsyncValue<List<PlanetModel>>>;
String _$favoritePlanetsHash() => r'a2f998f81c1070f83ef5a33806c31efe45df8756';

/// See also [favoritePlanets].
@ProviderFor(favoritePlanets)
final favoritePlanetsProvider = AutoDisposeProvider<List<PlanetModel>>.internal(
  favoritePlanets,
  name: r'favoritePlanetsProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$favoritePlanetsHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef FavoritePlanetsRef = AutoDisposeProviderRef<List<PlanetModel>>;
String _$searchQueryHash() => r'314b94e2fce6646b775075e352042222b89b4449';

/// See also [SearchQuery].
@ProviderFor(SearchQuery)
final searchQueryProvider =
    AutoDisposeNotifierProvider<SearchQuery, String>.internal(
      SearchQuery.new,
      name: r'searchQueryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$searchQueryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$SearchQuery = AutoDisposeNotifier<String>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
