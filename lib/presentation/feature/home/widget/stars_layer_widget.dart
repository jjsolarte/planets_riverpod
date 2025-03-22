import 'dart:math';

import 'package:flutter/material.dart';
import 'package:planetas/core/utils/custom_painter.dart';
import 'package:planetas/data/models/stars_model.dart';

class StarsLayer extends StatefulWidget {
  const StarsLayer({super.key});

  @override
  State<StarsLayer> createState() => _StarsLayerState();
}

class _StarsLayerState extends State<StarsLayer> with TickerProviderStateMixin {
  late final AnimationController _mainController;
  late final AnimationController _twinkleController;
  final List<Star> _stars = [];
  final Random _random = Random();

  @override
  void initState() {
    super.initState();

    _mainController = AnimationController(
      duration: const Duration(seconds: 15),
      vsync: this,
    )..repeat();

    _twinkleController = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    )..repeat();

    for (int i = 0; i < 100; i++) {
      _stars.add(Star(
        x: _random.nextDouble(),
        y: _random.nextDouble(),
        size: _random.nextDouble() * 2 + 0.5,
        twinkleOffset: _random.nextDouble(),
        twinkleSpeed: _random.nextDouble() * 2 + 0.5,
      ));
    }
  }

  @override
  void dispose() {
    _mainController.dispose();
    _twinkleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: Listenable.merge([_mainController, _twinkleController]),
      builder: (context, child) {
        return CustomPaint(
          painter: StarryNightPainter(
            stars: _stars,
            mainAnimValue: _mainController.value,
            twinkleAnimValue: _twinkleController.value,
          ),
          size: Size.infinite,
        );
      },
    );
  }
}
