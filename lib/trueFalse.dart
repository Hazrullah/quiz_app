import 'package:flutter/material.dart';
import 'package:quiz_app/component/quizAppBar.dart';
import 'package:quiz_app/component/quizBody.dart';
import 'package:quiz_app/component/quizBottomBar.dart';
import 'multipleChoice1.dart';

class TrueFalse extends StatelessWidget {
  const TrueFalse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: QuizAppBar(),
      body: QuizBody(answerStyle: const TrueFalseAnswer(),),
      bottomNavigationBar: const QuizBottomBar(),
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
