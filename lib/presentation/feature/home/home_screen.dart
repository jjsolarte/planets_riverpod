import 'package:flutter/material.dart';
import 'package:planetas/presentation/organism/author_widget.dart';

import 'package:planetas/presentation/organism/gradient_background_organism.dart';
import 'package:planetas/presentation/organism/navigation_button.dart';

import 'widget/stars_layer_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: const [
          GradientBackground(),
          StarsLayer(),
          NavigationButton(),
          AuthorWidget(),
        ],
      ),
    );
  }
}
