import 'package:flutter/material.dart';
import 'package:quiz_app/widgets/text_container.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/widgets/quiz_app_bar.dart';
import 'package:quiz_app/widgets/quiz_bottom_bar.dart';

class Matching2 extends StatelessWidget {
  const Matching2({super.key});

  @override
  Widget build(BuildContext context) {
    return const GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
        appBar: QuizAppBar(),
        body: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextContainer(height: 90, width: 120, text: "hello",),
                  TextContainer(height: 90, width: 120, text: "hello",),
                  TextContainer(height: 90, width: 120, text: "hello",),
                  TextContainer(height: 90, width: 120, text: "hello",),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,

                children: [
                  TextContainer(height: 90, width: 120, text: "hello",),
                  TextContainer(height: 90, width: 120, text: "hello",),
                  TextContainer(height: 90, width: 120, text: "hello",),
                  TextContainer(height: 90, width: 120, text: "hello",),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: QuizBottomBar(),
      ),
    );
  }
}
