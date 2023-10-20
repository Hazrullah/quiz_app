import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/container_card.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/widgets/quiz_app_bar.dart';
import 'package:quiz_app/widgets/quiz_bottom_bar.dart';

class Matching1 extends StatelessWidget {
  const Matching1({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const Drawer(),
        appBar: const QuizAppBar(),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              shrinkWrap: true,
              children: const [
                ContainerCard(text: "hello"),
                ContainerCard(text: "hello"),
                ContainerCard(text: "hello"),
                ContainerCard(text: "hello"),
                ContainerCard(text: "hello"),
                ContainerCard(text: "hello"),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const QuizBottomBar(),
      ),
    );
  }
}
