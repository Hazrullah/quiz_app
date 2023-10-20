import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class ContainerCard extends StatelessWidget {
  final double width;
  final double height;
  final String text;
  final void Function()? onTap;

  const ContainerCard({super.key, this.width = double.infinity, this.height = 50, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap;
      },
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primaryContainer,
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.shadow,
              blurRadius: 8,
              offset: const Offset(0, 4),
              spreadRadius: 0,
            ),
          ],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: AutoSizeText(
            text,
            minFontSize: 30,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}