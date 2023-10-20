import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/models/fill_in_blank_model.dart';
import 'package:quiz_app/theme_manager.dart';

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
            child: Container(
              width: double.infinity,
              // height: 250,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.shadow,
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: AutoSizeText(
                  fillInBlankModel?.question ?? "question",
                  minFontSize: 20,
                ),
              ),
            ),
          ),
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
