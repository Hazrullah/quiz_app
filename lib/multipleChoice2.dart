import 'package:flutter/material.dart';
import 'package:quiz_app/component/quizAppBar.dart';
import 'package:quiz_app/component/quizBody.dart';
import 'package:quiz_app/component/quizBottomBar.dart';
import 'multipleChoice1.dart';

class MultipleChoice2 extends StatelessWidget {
  const MultipleChoice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: QuizAppBar(),
      body: QuizBody(answerStyle: const GridAnswer(),),
      bottomNavigationBar: const QuizBottomBar(),
    );
  }
}

class GridAnswer extends StatelessWidget {
  const GridAnswer({
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
        AnswerCard(),
        AnswerCard(),
      ],
    );
  }
}
