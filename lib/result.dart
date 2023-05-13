import 'package:flutter/material.dart';

import 'constant.dart';

class Result extends StatelessWidget {
  const Result({
    Key? key,
    required this.result,
    required this.isMale,
    required this.age,
  }) : super(key: key);

  //Varaiables******************************
  final double result;

  final bool isMale;
  final int age;

  //****************************** */
  //others/////////////////
  String get resultPharse {
    String resultText = '';
    if (result >= 30) {
      resultText = 'Obese';
    } else if (result <= 30 && result >= 25) {
      resultText = 'OverWight';
    } else if (result <= 25 && result >= 18) {
      resultText = 'Normal';
    } else {
      resultText = 'Thin';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Result',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            result_card(
              size: size,
              result: 'Gender :  ${isMale ? 'Male' : 'Female'}',
            ),
            result_card(
                size: size, result: 'Result :  ${result.toStringAsFixed(2)}'),
            result_card(
              size: size,
              result: 'Healthness :  $resultPharse',
            ),
            result_card(
              size: size,
              result: 'Age :  $age',
            )
          ],
        ),
      )),
    );
  }
}

// 'Result : ${result.toStringAsFixed(2)}'
