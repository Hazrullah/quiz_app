import 'package:flutter/material.dart';
import 'component/customAppBar.dart';
import 'component/customBody.dart';
import 'component/customBottomBar.dart';
import 'multipleChoice1.dart';

class TrueFalse extends StatelessWidget {
  const TrueFalse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: buildAppBar(),
      body: Body(answerStyle: const TrueFalseAnswer(),),
      bottomNavigationBar: const CustomBottomBar(),
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
