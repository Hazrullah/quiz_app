import 'package:flutter/material.dart';
import 'package:quiz_app/components/quiz_app_bar.dart';
import 'package:quiz_app/components/quiz_body.dart';
import 'package:quiz_app/components/quiz_bottom_bar.dart';

class MultipleChoice1 extends StatelessWidget {
  const MultipleChoice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: QuizAppBar(),
      body: const QuizBody(answerStyle: ListAnswer()),
      bottomNavigationBar: const QuizBottomBar(),
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
        AnswerCard(),
        AnswerCard(),
        AnswerCard(),
        AnswerCard(),
      ],
    );
  }
}

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        minimumSize: const MaterialStatePropertyAll(Size(double.infinity, 50)),
        // shadowColor: MaterialStatePropertyAll(Color(0x33FFC107)),
        backgroundColor: MaterialStatePropertyAll<Color>(Theme.of(context).colorScheme.primaryContainer),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: Text(
        "hello",
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
