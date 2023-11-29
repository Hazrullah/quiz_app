import 'package:flutter/material.dart';
import 'package:quiz_app/theme_manager.dart';
import 'package:quiz_app/widgets/text_container.dart';

class QuizBody extends StatelessWidget {
  final String questionText;
  final Widget answerStyle;

  const QuizBody({
    super.key,
    required this.answerStyle,
    required this.questionText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
              padding: const EdgeInsets.all(20),
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                    spreadRadius: 0,
                  )
                ],
                borderRadius: BorderRadius.circular(8),
                gradient: LinearGradient(
                  colors: Theme.of(context).brightness == Brightness.light
                      ? gradientLight
                      : gradientDark,
                  stops: const [
                    0.0,
                    0.15,
                    1.0,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
              child: TextContainer(
                padding: const EdgeInsets.all(10),
                text: questionText,
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: answerStyle),
          ),
        ),
      ],
    );
  }
}
