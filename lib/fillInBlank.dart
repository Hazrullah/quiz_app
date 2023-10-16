import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/component/quizAppBar.dart';
import 'package:quiz_app/component/quizBody.dart';
import 'package:quiz_app/component/quizBottomBar.dart';
import 'package:quiz_app/provider/fill_in_the_blank_provider.dart';
import 'package:quiz_app/themeManager.dart';

class FillInBlank extends StatelessWidget {
  const FillInBlank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Theme.of(context).brightness == Brightness.light
              ? gradientLightBody
              : gradientDarkBody,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
        appBar: QuizAppBar(),
        body: QuizBody(answerStyle: FillInBlankAnswer()),
        bottomNavigationBar: QuizBottomBar(),
      ),
    );
  }
}

class FillInBlankAnswer extends StatefulWidget {
  const FillInBlankAnswer({super.key});

  @override
  State<FillInBlankAnswer> createState() => _FillInBlankAnswerState();
}

class _FillInBlankAnswerState extends State<FillInBlankAnswer> {
  List<String> alphabetList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"];


  @override
  Widget build(BuildContext context) {
    var data = Provider.of<FibProvider>(context).answer;
    var provider = Provider.of<FibProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 100,
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            shadows: [
              BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                blurRadius: 8,
                offset: Offset(0, 4),
                spreadRadius: 2,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(bottom: 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AutoSizeText(
                        data,
                        minFontSize: 25,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            provider.removeText();
                          });
                        },
                        icon: Icon(Icons.backspace),
                      ),
                    ],
                  ),
                ),
                Divider(
                  thickness: 4,
                  color: Theme.of(context).colorScheme.onPrimaryContainer,
                ),
              ],
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var i = 0; i < 5; i++) AlphabetCard(alphabet: alphabetList[i]),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (var i = 5; i < 10; i++) AlphabetCard(alphabet: alphabetList[i]),
          ],
        ),
      ],
    );
  }
}

class AlphabetCard extends StatelessWidget {
  final String alphabet;

  const AlphabetCard({super.key, required this.alphabet});

  @override
  Widget build(BuildContext context) {
    var data = Provider.of<FibProvider>(context);
    return Flexible(
      child: GestureDetector(
        onTap: () => data.insertText(alphabet),
        child: Container(
          width: 60,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 25),
          decoration: ShapeDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            shadows: [
              BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                blurRadius: 8,
                offset: Offset(0, 4),
                spreadRadius: 2,
              )
            ],
          ),
          child: AutoSizeText(
            alphabet,
            minFontSize: 20,
            textAlign: TextAlign.center,
            // style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}
