import 'package:flutter/material.dart';

class PlanetInfoText extends StatelessWidget {
  final String text;

  const PlanetInfoText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white70, fontSize: 14),
    );
  }
}
