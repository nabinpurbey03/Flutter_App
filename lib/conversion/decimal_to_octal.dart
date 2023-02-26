import 'package:flutter/material.dart';

class DecimalToOctalState extends StatelessWidget {
  var inputData;

  DecimalToOctalState(this.inputData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Decimal To octal',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Center(
          child: Text(
        'Octal of $inputData is: ${inputData.toRadixString(8)}',
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: Colors.blue),
      )),
    );
  }
}
