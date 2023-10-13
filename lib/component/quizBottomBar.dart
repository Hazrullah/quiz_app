import 'package:flutter/material.dart';
import 'package:quiz_app/themeManager.dart';

class QuizBottomBar extends StatelessWidget {
  const QuizBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.outline,
              blurRadius: 8,
              offset: Offset(0, 0),
              spreadRadius: 2,
            )
          ],
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light? gradientLightBottomBar : gradientDarkBottomBar,
            stops: [
              0.0,
              0.85,
              1.0,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_before,
              ),
            ),
            Container(
              width: 44,
              height: 20,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Theme.of(context).colorScheme.primaryContainer,
                shadows: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    blurRadius: 8,
                    offset: Offset(0, 0),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "1",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
              ),
            ),
          ],
        ),
      ),
    );
  }
}