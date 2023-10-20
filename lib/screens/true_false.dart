import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/container_card.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/widgets/quiz_app_bar.dart';
import 'package:quiz_app/widgets/quiz_body.dart';
import 'package:quiz_app/widgets/quiz_bottom_bar.dart';

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
        ContainerCard(
          width: 160,
          height: 80,
          text: "true",
        ),
        ContainerCard(
          width: 160,
          height: 80,
          text: "false",
        ),
      ],
    );
  }
}
