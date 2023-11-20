import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FibProvider extends ChangeNotifier {
  String answer = "";
  late bool result;

  void insertText(String value) {
    answer = answer + value;
    notifyListeners();
  }

  void removeText() {
    answer = answer.substring(0, (answer.length - 1));
    notifyListeners();
  }

  void checkResult(String trueAnswer, BuildContext context) {
    if (answer.length == trueAnswer.length) {
      answer == trueAnswer ? result = true : result = false;
      displayDialog(context);
    }
  }

  void displayDialog(BuildContext context) {
    showDialog<String>(
        barrierColor: Colors.transparent,
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          Future.delayed(
            const Duration(seconds: 2),
            () {
              Navigator.of(context).pop();
              if(result == false){
                answer = "";
                notifyListeners();
              }
            },
          );
          return AlertDialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              icon: LottieBuilder.asset(
                result
                    ? "assets/animation/animation_lof769e3.json"
                    : "assets/animation/animation_lof76pyu.json",
                repeat: false,
              )
              // buttonPadding: EdgeInsets.symmetric(horizontal: 20),
              // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
              // title: result ? Text('CORRECT') : Text("INCORRECT"),
              // actionsAlignment: MainAxisAlignment.center,
              // actions: <Widget>[
              //   FilledButton(
              //     onPressed: () => result
              //         ? Navigator.pop(context, 'OK')
              //         : Navigator.pop(context, 'OK'),
              //     style: ButtonStyle(
              //         minimumSize:
              //             MaterialStatePropertyAll(Size(double.infinity, 50))),
              //     child: result ? Text('NEXT') : Text("TRY AGAIN"),
              //   ),
              // ],
              );
        });
  }
}
