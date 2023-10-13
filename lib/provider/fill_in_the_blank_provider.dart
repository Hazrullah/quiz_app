

import 'package:flutter/material.dart';

class FibProvider extends ChangeNotifier{

  String answer = "";
  String lastInput = "";

  insertText(String value){
    lastInput = answer;
    answer = answer + value;
    notifyListeners();
  }

  removeText(){
    answer = answer.substring(0, (answer.length - 1));
    notifyListeners();
  }

}