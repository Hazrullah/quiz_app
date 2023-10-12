

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
    answer = lastInput;
    notifyListeners();
  }

}