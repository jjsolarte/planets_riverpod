import 'dart:math';

import 'package:flutter/material.dart';
import 'package:planetas/data/models/stars_model.dart';

class StarryNightPainter extends CustomPainter {
  final List<Star> stars;
  final double mainAnimValue;
  final double twinkleAnimValue;

  StarryNightPainter({
    required this.stars,
    required this.mainAnimValue,
    required this.twinkleAnimValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (final star in stars) {
      final paint = Paint()..style = PaintingStyle.fill;

      final dx = star.x * size.width;
      final dy = star.y * size.height;

      final twinklePhase = (twinkleAnimValue + star.twinkleOffset) % 1.0;

      final opacity = 0.2 + (sin(twinklePhase * 2 * pi) * 0.5 + 0.5) * 0.8;

      final glowFactor = 1.0 + (opacity * 0.5);
      final radius = star.size * glowFactor;

      paint.color = Colors.white.withOpacity(opacity);
      canvas.drawCircle(Offset(dx, dy), radius, paint);

      if (opacity > 0.7) {
        paint.color = Colors.white.withOpacity(opacity * 0.3);
        canvas.drawCircle(Offset(dx, dy), radius * 2, paint);
      }
    }
  }

  @override
  bool shouldRepaint(covariant StarryNightPainter oldDelegate) =>
      oldDelegate.mainAnimValue != mainAnimValue ||
          oldDelegate.twinkleAnimValue != twinkleAnimValue;
}
