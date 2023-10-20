// To parse this JSON data, do
//
//     final fillInBlankModel = fillInBlankModelFromJson(jsonString);

import 'dart:convert';

import 'package:flutter/foundation.dart';

FillInBlankModel fillInBlankModelFromJson(String str) => FillInBlankModel.fromJson(json.decode(str));

String fillInBlankModelToJson(FillInBlankModel data) => json.encode(data.toJson());

class FillInBlankModel extends ChangeNotifier{
  String question;
  String trueAnswer;
  List<String> alphabetList;

  FillInBlankModel({
    required this.question,
    required this.trueAnswer,
    required this.alphabetList,
  });

  factory FillInBlankModel.fromJson(Map<String, dynamic> json) => FillInBlankModel(
    question: json["question"],
    trueAnswer: json["trueAnswer"],
    alphabetList: List<String>.from(json["alphabetList"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "question": question,
    "trueAnswer": trueAnswer,
    "alphabetList": List<dynamic>.from(alphabetList.map((x) => x)),
  };

  bool? isTrue(String answer){

    if(answer.length == trueAnswer.length) {
      if(answer == trueAnswer){
        return true;
      }else{
        return false;
      }
    }
    return null;
  }
}
