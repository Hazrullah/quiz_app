import 'package:flutter/material.dart';
import 'package:quiz_app/components/gradient_container.dart';
import 'package:quiz_app/components/quiz_app_bar.dart';
import 'package:quiz_app/components/quiz_body.dart';
import 'package:quiz_app/components/quiz_bottom_bar.dart';

class MultipleChoice1 extends StatelessWidget {
  const MultipleChoice1({super.key});

  @override
  Widget build(BuildContext context) {
    return const GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
        appBar: QuizAppBar(),
        body: QuizBody(answerStyle: ListAnswer()),
        bottomNavigationBar: QuizBottomBar(),
      ),
    );
  }
}

class ListAnswer extends StatelessWidget {
  const ListAnswer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AnswerCard(),
        AnswerCard(),
        AnswerCard(),
        AnswerCard(),
      ],
    );
  }
}

class AnswerCard extends StatelessWidget {
  final double width;
  final double height;

  const AnswerCard({super.key, this.width = double.infinity, this.height = 50});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

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
          child: Text(
            "hello",
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimaryContainer,
            ),
          ),
        ),
      ),
    );
  }
}
