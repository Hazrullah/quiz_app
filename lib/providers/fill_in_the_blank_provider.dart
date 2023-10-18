import 'package:flutter/material.dart';

class FibProvider extends ChangeNotifier {

  String answer = "";

  void insertText(String value) {
    answer = answer + value;
    notifyListeners();
  }

   void removeText() {
    answer = answer.substring(0, (answer.length - 1));
    notifyListeners();
  }
}
