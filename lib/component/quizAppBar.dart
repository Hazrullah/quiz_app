import 'package:flutter/material.dart';
import 'package:quiz_app/themeManager.dart';

class QuizAppBar extends StatelessWidget implements PreferredSizeWidget {

  const QuizAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // elevation: 4,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.outline,
              blurRadius: 8,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light? gradientLight : gradientDark,
            stops: [
              0.0,
              0.15,
              1.0,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.language),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}