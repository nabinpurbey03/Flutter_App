import 'package:flutter/material.dart';
import 'dart:math';

class BinaryToDecimalState extends StatelessWidget {
  var inputData;

  BinaryToDecimalState(this.inputData, {super.key});

  int conversion(int n) {
    int add = 0;
    for (int i = 0; n != 0; i++) {
      var rem = n % 10;
      var dec = rem * pow(2, i);
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
        'Binary to decimal',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Center(
          child: Text(
        'Binary of $inputData is: ${conversion(inputData)}',
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: Colors.blue),
      )),
    );
  }
}
