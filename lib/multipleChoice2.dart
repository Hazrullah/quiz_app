import 'package:flutter/material.dart';
import 'package:quiz_app/component/customAppBar.dart';
import 'package:quiz_app/component/customBody.dart';
import 'package:quiz_app/component/customBottomBar.dart';
import 'multipleChoice1.dart';

class MultipleChoice2 extends StatelessWidget {
  const MultipleChoice2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: buildAppBar(),
      body: Body(answerStyle: const GridAnswer(),),
      bottomNavigationBar: const CustomBottomBar(),
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
