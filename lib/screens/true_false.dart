import 'package:flutter/material.dart';
import 'package:quiz_app/components/quiz_app_bar.dart';
import 'package:quiz_app/components/quiz_body.dart';
import 'package:quiz_app/components/quiz_bottom_bar.dart';
import 'package:quiz_app/screens/multiple_choice_1.dart';
import 'package:quiz_app/theme_manager.dart';

class TrueFalse extends StatelessWidget {
  const TrueFalse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Theme.of(context).brightness == Brightness.light? gradientLightBody : gradientDarkBody,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: const Scaffold(
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
    return GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      mainAxisSpacing: 20,
      crossAxisSpacing: 20,
      childAspectRatio: 2,
      children: const [
        AnswerCard(),
        AnswerCard(),
      ],
    );
  }
}
