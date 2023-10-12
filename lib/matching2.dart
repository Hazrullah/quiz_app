import 'package:flutter/material.dart';
import 'package:quiz_app/component/customAppBar.dart';
import 'package:quiz_app/component/customBottomBar.dart';
import 'package:quiz_app/multipleChoice1.dart';

class Matching2 extends StatelessWidget {
  const Matching2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: buildAppBar(),
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
      ),
      bottomNavigationBar: const CustomBottomBar(),
    );
  }
}
