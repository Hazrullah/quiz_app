import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/widgets/text_container.dart';
import 'package:quiz_app/widgets/gradient_container.dart';
import 'package:quiz_app/widgets/quiz_app_bar.dart';
import 'package:quiz_app/widgets/quiz_body.dart';
import 'package:quiz_app/widgets/quiz_bottom_bar.dart';
import 'package:quiz_app/models/fill_in_blank_model.dart';
import 'package:quiz_app/providers/fill_in_the_blank_provider.dart';

class FillInBlank extends StatelessWidget {
  const FillInBlank({super.key});

  @override
  Widget build(BuildContext context) {
    List<FillInBlankModel> listSampleData = [
      FillInBlankModel(
        question: "sample Q1: Tarikh in english?",
        trueAnswer: "date",
        alphabetList: [
          "a",
          "t",
          "i",
          "r",
          "d",
          "e",
          "b",
          "p",
          "h",
          "g",
          "v",
          "u"
        ],
      ),
      FillInBlankModel(
        question: "sample Q2: Color of school bus?",
        trueAnswer: "yellow",
        alphabetList: [
          "o",
          "t",
          "i",
          "y",
          "d",
          "e",
          "b",
          "p",
          "w",
          "g",
          "l",
          "u"
        ],
      ),
      FillInBlankModel(
        question: "sample Q3: smallest state in malaysia?",
        trueAnswer: "perlis",
        alphabetList: [
          "a",
          "p",
          "i",
          "r",
          "d",
          "e",
          "b",
          "s",
          "h",
          "g",
          "l",
          "e"
        ],
      ),
      FillInBlankModel(
        question: "test arabic",
        trueAnswer: "مد",
        alphabetList: [
          "د",
          "م",
          "ى",
          "س",
          "ظ",
          "ص",
          "ل",
          "ت",
          "س",
          "و",
          "ح",
          "ف"
        ],
      ),
    ];

    var currentState = Provider.of<FibProvider>(context);
    currentState.questionLenght = listSampleData.length;
    var data = listSampleData[currentState.currentQuestion];

    return GradientContainer(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        drawer: const Drawer(),
        appBar: const QuizAppBar(),
        body: QuizBody(
          answerStyle: FillInBlankAnswer(fillInBlankModel: data),
          questionText: data.question,
        ),
        bottomNavigationBar: const QuizBottomBar(),
      ),
    );
  }
}

class FillInBlankAnswer extends StatefulWidget {
  const FillInBlankAnswer({required this.fillInBlankModel, super.key});

  final FillInBlankModel fillInBlankModel;

  @override
  State<FillInBlankAnswer> createState() => _FillInBlankAnswerState();
}

class _FillInBlankAnswerState extends State<FillInBlankAnswer> {
  // List<String> alphabetList = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"];
  late FillInBlankModel _fillInBlankModel;

  // @override
  // void initState() {
  //   _fillInBlankModel = widget.fillInBlankModel;
  // super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    _fillInBlankModel = widget.fillInBlankModel;
    var provider = Provider.of<FibProvider>(context);

    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primaryContainer,
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.shadow,
                blurRadius: 8,
                offset: const Offset(0, 4),
                spreadRadius: 0,
              ),
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (RegExp(r'^[a-zA-Z]+')
                              .hasMatch(_fillInBlankModel.trueAnswer) ||
                          provider.answer == "")
                        for (int i = 0;
                            i < _fillInBlankModel.trueAnswer.length;
                            i++)
                          Flexible(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 4),
                              width: 40,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Spacer(),
                                  if (provider.answer.length > i)
                                    AutoSizeText(
                                      provider.answer != ""
                                          ? provider.answer[i]
                                          : "",
                                      minFontSize: 30,
                                    ),
                                  Divider(
                                    thickness: 4,
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                  ),
                                ],
                              ),
                            ),
                          ),
                      if (RegExp(r'^[\u0621-\u064A]+')
                              .hasMatch(_fillInBlankModel.trueAnswer) &&
                          provider.answer != "")
                        Flexible(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Spacer(),
                              AutoSizeText(
                                provider.answer,
                                minFontSize: 30,
                              ),
                              Divider(
                                thickness: 4,
                                color: Theme.of(context)
                                    .colorScheme
                                    .onPrimaryContainer,
                              ),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
                if (provider.answer.isNotEmpty &&
                    provider.answer.length !=
                        _fillInBlankModel.trueAnswer.length)
                  IconButton(
                    onPressed: () {
                      provider.removeText();
                    },
                    icon: const Icon(Icons.backspace),
                  ),
              ],
            ),
          ),
        ),
        Wrap(
          spacing: _fillInBlankModel.alphabetList.length >= 6
              ? ((MediaQuery.sizeOf(context).width - (6 * 50) - 40) / 5)
                  .floorToDouble()
              : 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            for (var i = 0; i < _fillInBlankModel.alphabetList.length; i++)
              TextContainer(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                text: _fillInBlankModel.alphabetList[i],
                width: 50,
                onTap: provider.answer.length ==
                        _fillInBlankModel.trueAnswer.length
                    ? null
                    : () {
                        provider.insertText(_fillInBlankModel.alphabetList[i]);
                        provider.checkResult(
                            _fillInBlankModel.trueAnswer, context);
                      },
              ),
          ],
        ),
      ],
    );
  }
}
