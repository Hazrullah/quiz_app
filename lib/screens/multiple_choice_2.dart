import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/container_card.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/widgets/quiz_app_bar.dart';
import 'package:quiz_app/widgets/quiz_body.dart';
import 'package:quiz_app/widgets/quiz_bottom_bar.dart';

class MultipleChoice2 extends StatelessWidget {
  const MultipleChoice2({super.key});

  @override
  Widget build(BuildContext context) {
    return const GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
        appBar: QuizAppBar(),
        body: QuizBody(answerStyle: GridAnswer(),),
        bottomNavigationBar: QuizBottomBar(),
      ),
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
        ContainerCard(text: "hello"),
        ContainerCard(text: "hello"),
        ContainerCard(text: "hello"),
        ContainerCard(text: "hello"),
      ],
    );
  }
}
