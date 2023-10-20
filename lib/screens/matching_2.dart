import 'package:flutter/material.dart';
import 'package:quiz_app/components/gradient_container.dart';
import 'package:quiz_app/components/quiz_app_bar.dart';
import 'package:quiz_app/components/quiz_bottom_bar.dart';
import 'package:quiz_app/screens/multiple_choice_1.dart';

class Matching2 extends StatelessWidget {
  const Matching2({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const Drawer(),
        appBar: QuizAppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 40,
              crossAxisSpacing: 80,
              childAspectRatio: 1.2,
              shrinkWrap: true,
              children: const [
                AnswerCard(),
                AnswerCard(),
                AnswerCard(),
                AnswerCard(),
                AnswerCard(),
                AnswerCard(),
                AnswerCard(),
                AnswerCard(),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const QuizBottomBar(),
      ),
    );
  }
}
