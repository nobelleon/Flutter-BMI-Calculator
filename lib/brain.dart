import 'package:flutter/material.dart';
import 'dart:math';

class Calculate {

  Calculate({@required this.height, @required this.weight});

  int height;
  int weight;
  double _bmi;

  List<String> condition = [
    'UNDERWEIGHT',
    'NORMAL',
    'OVERWEIGHT',
  ];

  List<String> inference = [
    'Oh man...\n\nYou got to eat more. So what you do is contact Fawaz, he\'s the one who eats the most',
    'Normal Body\n\nGood Job.',
    'ALARMING !!!\n\nLo, Gym ge hoggappa, illandre blast aagthiya. Dadiya.',
  ];

  void okay() {
    _bmi = weight/pow((height/100), 2);
  }

  String getResult() {
    return _bmi.toStringAsFixed(1);
  }

  String getCondition() {
    okay();
    if(_bmi < 19.0) {
      return condition[0];
    }
    if(_bmi > 19.0 && _bmi < 25.0) {
      return condition[1];
    }
    if(_bmi > 25.0) {
      return condition[2];
    }
  }

  String getInference() {
    if(_bmi<19.0) {
      return inference[0];
    }
    if(_bmi>19.0 && _bmi<25.0) {
      return inference[1];
    }
    if(_bmi>25.0) {
      return inference[2];
    }
  }
}