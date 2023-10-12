import 'package:flutter/material.dart';
import 'component/customAppBar.dart';
import 'component/customBody.dart';
import 'component/customBottomBar.dart';

class MultipleChoice1 extends StatelessWidget {
  const MultipleChoice1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      drawer: const Drawer(),
      appBar: buildAppBar(),
      body: const Body(answerStyle: ListAnswer()),
      bottomNavigationBar: const CustomBottomBarDark(),
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
        backgroundColor: const MaterialStatePropertyAll(Color(0xFFFFF8E1)),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      child: const Text(
        "hello",
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
}
