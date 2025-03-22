import 'package:flutter/material.dart';

class PlanetTitleText extends StatelessWidget {
  final String title;

  const PlanetTitleText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
