import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/provider/fill_in_the_blank_provider.dart';
import 'package:quiz_app/themeManager.dart';

class FillInBlank extends StatelessWidget {
  const FillInBlank({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: Theme.of(context).brightness == Brightness.light? gradientLightBody : gradientDarkBody,
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: Drawer(),
        appBar: QuizAppBar(),
        // TheAppBar(),
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
  @override
  Widget build(BuildContext context) {
    var data = Provider.of<FibProvider>(context).answer;
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
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(data),
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: Theme.of(context).colorScheme.onPrimaryContainer,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AlphabetCard(alphabet: "aaaaaaaaaa"),
            AlphabetCard(alphabet: "bbbbbbbb"),
            AlphabetCard(alphabet: "cccccccc"),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AlphabetCard(alphabet: "d"),
            AlphabetCard(alphabet: "e"),
            AlphabetCard(alphabet: "f"),
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
        onTap: () =>  data.insertText(alphabet),
        child: Container(
          width: 100,
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
            minFontSize: 15,
            textAlign: TextAlign.center,
            // style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
      ),
    );
  }
}

class QuizAppBar extends StatelessWidget implements PreferredSizeWidget {

  const QuizAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // elevation: 4,
      flexibleSpace: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.outline,
              blurRadius: 8,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
          borderRadius: BorderRadius.circular(8),
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light? gradientLight : gradientDark,
            stops: [
              0.0,
              0.15,
              1.0,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      ),
      backgroundColor: Colors.transparent,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.language),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.settings),
        ),
      ],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

class QuizBody extends StatelessWidget {
  final Widget answerStyle;

  const QuizBody({
    super.key,
    required this.answerStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.secondaryContainer,
                  blurRadius: 8,
                  offset: Offset(0, 4),
                  spreadRadius: 0,
                )
              ],
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(
                colors: Theme.of(context).brightness == Brightness.light? gradientLight : gradientDark,
                stops: [
                  0.0,
                  0.15,
                  1.0,
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Container(
              width: double.infinity,
              // height: 250,
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.shadow,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "question",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(child: answerStyle),
          ),
        ),
      ],
    );
  }
}

class QuizBottomBar extends StatelessWidget {
  const QuizBottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Theme.of(context).colorScheme.outline,
              blurRadius: 8,
              offset: Offset(0, 0),
              spreadRadius: 2,
            )
          ],
          gradient: LinearGradient(
            colors: Theme.of(context).brightness == Brightness.light? gradientLightBottomBar : gradientDarkBottomBar,
            stops: [
              0.0,
              0.85,
              1.0,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.navigate_before,
              ),
            ),
            Container(
              width: 44,
              height: 20,
              decoration: ShapeDecoration(
                shape: StadiumBorder(),
                color: Theme.of(context).colorScheme.primaryContainer,
                shadows: [
                  BoxShadow(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    blurRadius: 8,
                    offset: Offset(0, 0),
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  "1",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.navigate_next,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
