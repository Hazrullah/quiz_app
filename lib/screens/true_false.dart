import 'package:flutter/material.dart';
import 'package:quiz_app/components/gradient_container.dart';
import 'package:quiz_app/components/quiz_app_bar.dart';
import 'package:quiz_app/components/quiz_body.dart';
import 'package:quiz_app/components/quiz_bottom_bar.dart';
import 'package:quiz_app/screens/multiple_choice_1.dart';
import 'package:quiz_app/theme_manager.dart';

class TrueFalse extends StatelessWidget {
  const TrueFalse({super.key});

  @override
  Widget build(BuildContext context) {
    return const GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
        appBar: QuizAppBar(),
        body: QuizBody(answerStyle: TrueFalseAnswer(),),
        bottomNavigationBar: QuizBottomBar(),
      ),
    );
  }
}

class TrueFalseAnswer extends StatelessWidget {
  const TrueFalseAnswer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        AnswerCard(
          width: 160,
          height: 80,
        ),
        AnswerCard(
          width: 160,
          height: 80,
        ),
      ],
    );
  }
}
