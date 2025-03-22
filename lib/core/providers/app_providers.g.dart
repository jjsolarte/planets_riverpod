// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$routesHash() => r'712b8a789684f46b11ac4ac32f7f44b76d3faeeb';

/// See also [routes].
@ProviderFor(routes)
final routesProvider = Provider<List<RouteBase>>.internal(
  routes,
  name: r'routesProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef RoutesRef = ProviderRef<List<RouteBase>>;
String _$routerHash() => r'00232f7a307cab017274fe0a6e013a01b3512131';

/// See also [Router].
@ProviderFor(Router)
final routerProvider = NotifierProvider<Router, GoRouter>.internal(
  Router.new,
  name: r'routerProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$routerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Router = Notifier<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
