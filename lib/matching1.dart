import 'package:flutter/material.dart';
import 'package:quiz_app/component/quizAppBar.dart';
import 'package:quiz_app/component/quizBottomBar.dart';
import 'package:quiz_app/multipleChoice1.dart';

class Matching1 extends StatelessWidget {
  const Matching1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: QuizAppBar(),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFFFFBB7C),
                Color(0xFFFFF8E1),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Align(
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              shrinkWrap: true,
              children: const [
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
      ),
      bottomNavigationBar: const QuizBottomBar(),
    );
  }
}
