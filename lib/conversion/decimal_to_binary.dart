import 'package:flutter/material.dart';

class DecimalToBinaryState extends StatelessWidget {
  var inputData;

  DecimalToBinaryState(this.inputData, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'Decimal To binary',
        style: TextStyle(fontWeight: FontWeight.bold),
      )),
      body: Center(
          child: Text(
        'Binary of $inputData is: ${inputData.toRadixString(2)}',
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 26, color: Colors.blue),
      )),
    );
  }
}
