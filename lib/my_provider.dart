import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  List questions = [
    'sum of 3+2 ?',
    'sum of 5+10 ?',
    'sum of 1+1 ?',
  ];

  int index = -1;

  int score = 0;

  List answers = [
    [
      {
        'answer': '5',
        'score': 10,
      },
      {
        'answer': '2',
        'score': 0,
      },
    ],
    [
      {
        'answer': '5',
        'score': 0,
      },
      {
        'answer': '15',
        'score': 10,
      },
      {
        'answer': '0',
        'score': 0,
      },
    ],
    [
      {
        'answer': '2',
        'score': 10,
      },
      {
        'answer': '1',
        'score': 0,
      },
      {
        'answer': '3',
        'score': 0,
      },
      {
        'answer': '4',
        'score': 0,
      },
    ],
  ];

  reStart(){
    index =0;
    score = 0;
    notifyListeners();
  }

  changeIndex() {
    index++;
    notifyListeners();
  }

  changeScore({required int score}) {
    this.score += score;
    notifyListeners();
  }
}