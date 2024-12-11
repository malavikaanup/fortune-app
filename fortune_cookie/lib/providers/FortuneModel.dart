import 'dart:math';

import 'package:flutter/material.dart';

class FortuneModel extends ChangeNotifier {
  String _currentFortune = "";

  final _fortuneList = [
    "You will find a new friend.",
    "You will find a new friend tomorrow.",
    "A truly rich life contains love and art in abundance.",
    "Accept something that you cannot change, and you will feel better.",
    "Adventure can be real happiness.",
    "Advice is like kissing. It costs nothing and is a pleasure.",
    "Advice, when most needed, is least heeded."
  ];

  String get currentFortune => _currentFortune;

  FortuneModel() {
    _getRandomFortune();
  }

  void _getRandomFortune() {
    var random = Random();
    int fortuneIndex = random.nextInt(_fortuneList.length);
    _currentFortune = _fortuneList[fortuneIndex];
    notifyListeners();
  }

  //Method to get a new random fortune
  void getNewFortune() {
    _getRandomFortune();
  }
}
