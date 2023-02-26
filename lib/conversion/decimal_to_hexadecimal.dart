import 'package:flutter/material.dart';

class DecimalToHexadecimalState extends StatelessWidget {
  var inputData;

  DecimalToHexadecimalState(this.inputData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Decimal To hexadecimal',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Center(
          child: Text(
        'Hexadecimal of $inputData is: ${inputData.toRadixString(16)}',
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: Colors.blue),
      )),
    );
  }
}
