import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:planetas/core/router/app_routes.dart';

class NavigationButton extends StatelessWidget {
  const NavigationButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 80),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 15,
            ),
            textStyle: const TextStyle(fontSize: 20),
            backgroundColor: Colors.blueAccent,
          ),
          onPressed: () => context.pushReplacement(AppRoutes.planets),
          child: const Text(
            "Ver Planetas",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
