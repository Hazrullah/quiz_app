import 'package:flutter/material.dart';
import 'package:quiz_app/theme_manager.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Theme.of(context).brightness == Brightness.light
              ? gradientLightBody
              : gradientDarkBody,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: child,
    );
  }
}