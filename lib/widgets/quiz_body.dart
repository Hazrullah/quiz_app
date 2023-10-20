import 'package:flutter/material.dart';
import 'package:quiz_app/models/fill_in_blank_model.dart';
import 'package:quiz_app/theme_manager.dart';
import 'package:quiz_app/widgets/text_container.dart';

class QuizBody extends StatelessWidget {
  final Widget answerStyle;
  final FillInBlankModel? fillInBlankModel;

  const QuizBody({
    super.key,
    required this.answerStyle,
    this.fillInBlankModel,
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
                text: fillInBlankModel?.question ?? "question",
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
