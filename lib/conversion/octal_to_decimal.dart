import 'package:flutter/material.dart';
import 'dart:math';

class OctalToDecimalState extends StatelessWidget {
  var inputData;

  OctalToDecimalState(this.inputData);

  int conversion(int n) {
    int add = 0;
    for (int i = 0; n != 0; i++) {
      var rem = n % 10;
      var dec = rem * pow(8, i);
      add = (add + dec).floor();
      n = (n / 10).floor();
    }
    return add;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Octal to decimal',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Center(
          child: Text(
        'Octal of $inputData is: ${conversion(inputData)}',
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: Colors.blue),
      )),
    );
  }
}
