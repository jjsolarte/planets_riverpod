import 'package:flutter/material.dart';
import 'package:planetas/presentation/molecule/search_bar.dart';
import 'package:planetas/presentation/organism/planets_content.dart';

class PlanetsScreen extends StatelessWidget {
  const PlanetsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Planetas')),
      body: Column(
        children: [
          SearchBarWidget(),
          PlanetsContent(),
        ],
      ),
    );
  }
}
