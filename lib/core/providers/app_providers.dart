import 'package:go_router/go_router.dart';
import 'package:planetas/core/router/app_routes.dart';
import 'package:planetas/data/models/planet_model.dart';
import 'package:planetas/presentation/feature/detail/planet_detail_screen.dart';
import 'package:planetas/presentation/feature/home/home_screen.dart';
import 'package:planetas/presentation/feature/planets/planets_screen.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
export 'dio_provider.dart';

part 'app_providers.g.dart';

@Riverpod(keepAlive: true)
class Router extends _$Router {
  @override
  GoRouter build() {
    return GoRouter(
      initialLocation: AppRoutes.home,
      routes: ref.watch(routesProvider),
    );
  }
}

@Riverpod(keepAlive: true)
List<RouteBase> routes(ref) => [
  GoRoute(
    path: AppRoutes.home,
    name: 'home',
    builder: (context, state) => const HomeScreen(),
  ),
  GoRoute(
    path: AppRoutes.planets,
    name: 'planets',
    builder: (context, state) => const PlanetsScreen(),
  ),
  GoRoute(
    path: AppRoutes.planetDetail,
    name: 'planet_detail',
    builder:
        (context, state) =>
            PlanetDetailScreen(planet: state.extra as PlanetModel),
  ),
];
