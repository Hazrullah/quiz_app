import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/widgets/quiz_app_bar.dart';
import 'package:quiz_app/widgets/quiz_bottom_bar.dart';

class LearningSection extends StatelessWidget {
  const LearningSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const Drawer(),
        appBar: const QuizAppBar(),
        body: ListView.separated(
          padding: const EdgeInsets.all(20),
          itemBuilder: (BuildContext context, int index) {
            return const SizedBox(height: 15);
          },
          separatorBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {

              },
              child: Container(
                alignment: Alignment.center,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  color: Theme.of(context).colorScheme.primaryContainer,
                  shadows: [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.shadow,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                      spreadRadius: 2,
                    )
                  ],
                ),
                height: 100,
                padding: const EdgeInsets.all(8),
                child: const AutoSizeText(
                  "Subject 1",
                  minFontSize: 30,
                ),
              ),
            );
          },
          itemCount: 10,
        ),
        bottomNavigationBar: const QuizBottomBar(),
      ),
    );
  }
}
