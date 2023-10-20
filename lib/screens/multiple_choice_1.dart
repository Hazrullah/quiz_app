import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/text_container.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/widgets/quiz_app_bar.dart';
import 'package:quiz_app/widgets/quiz_body.dart';
import 'package:quiz_app/widgets/quiz_bottom_bar.dart';

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
        TextContainer(text: "hello", height: 50,),
        TextContainer(text: "hello", height: 50,),
        TextContainer(text: "hello", height: 50,),
        TextContainer(text: "hello", height: 50,),
      ],
    );
  }
}
