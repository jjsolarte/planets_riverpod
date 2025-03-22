import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:planetas/presentation/providers/planet_provider.dart';

class SearchBarWidget extends ConsumerWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        onChanged: (value) => ref.read(searchQueryProvider.notifier).updateQuery(value),
        decoration: const InputDecoration(
          labelText: 'Buscar planeta...',
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
