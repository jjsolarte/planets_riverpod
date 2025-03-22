import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

final favoritesProvider = StateNotifierProvider<FavoritesNotifier, List<String>>((ref) {
  return FavoritesNotifier();
});

class FavoritesNotifier extends StateNotifier<List<String>> {
  FavoritesNotifier() : super([]) {
    _loadFavorites();
  }

  static const _key = 'favorite_planets';

  Future<void> _loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final savedFavorites = prefs.getStringList(_key)?.cast<String>() ?? <String>[];
    state = savedFavorites;
  }

  Future<void> _saveFavorites(List<String> favorites) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList(_key, favorites);
  }

  void toggleFavorite(String planetId) {
    final newFavorites = List<String>.from(state);
    if (newFavorites.contains(planetId)) {
      newFavorites.remove(planetId);
    } else {
      newFavorites.add(planetId);
    }
    state = newFavorites;
    _saveFavorites(newFavorites);
  }

  bool isFavorite(String planetId) => state.contains(planetId);
}
