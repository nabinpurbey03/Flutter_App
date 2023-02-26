import 'package:converter_app/conversion/binary_to_decimal.dart';
import 'package:converter_app/conversion/decimal_to_binary.dart';
import 'package:converter_app/conversion/decimal_to_hexadecimal.dart';
import 'package:converter_app/conversion/decimal_to_octal.dart';
import 'package:flutter/material.dart';

class DecimalDisplayScreenForBinary extends StatefulWidget {
  const DecimalDisplayScreenForBinary({super.key});

  @override
  State<DecimalDisplayScreenForBinary> createState() =>
      _DecimalDisplayScreenForBinaryState();
}

class _DecimalDisplayScreenForBinaryState
    extends State<DecimalDisplayScreenForBinary> {
  var input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert to Decimal'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 14),
        child: SizedBox(
            width: 350,
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.blue,
                      controller: input,
                      decoration: InputDecoration(
                        hintText: 'Input Binary Number',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          var dec = int.parse(input.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      BinaryToDecimalState(dec)));
                        },
                        child: const Text('Convert to Decimal')),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class DecimalDisplayScreenForOctal extends StatefulWidget {
  const DecimalDisplayScreenForOctal({super.key});

  @override
  State<DecimalDisplayScreenForOctal> createState() =>
      _DecimalDisplayScreenForOctalState();
}

class _DecimalDisplayScreenForOctalState
    extends State<DecimalDisplayScreenForOctal> {
  var input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert to Decimal'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 14),
        child: SizedBox(
            width: 350,
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.blue,
                      controller: input,
                      decoration: InputDecoration(
                        hintText: 'Input Octal Number',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          var oct = int.parse(input.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DecimalToOctalState(oct)));
                        },
                        child: const Text('Convert to Decimal')),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class DecimalDisplayScreenForHexadecimal extends StatefulWidget {
  const DecimalDisplayScreenForHexadecimal({super.key});

  @override
  State<DecimalDisplayScreenForHexadecimal> createState() =>
      _DecimalDisplayScreenForHexadecimalState();
}

class _DecimalDisplayScreenForHexadecimalState
    extends State<DecimalDisplayScreenForHexadecimal> {
  var input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert to Decimal'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 14),
        child: SizedBox(
            width: 350,
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.blue,
                      controller: input,
                      decoration: InputDecoration(
                        hintText: 'Input Hexadecimal Number',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('Convert to Decimal')),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class DisplayScreenOnBinary extends StatefulWidget {
  const DisplayScreenOnBinary({super.key});

  @override
  State<DisplayScreenOnBinary> createState() => _DisplayScreenOnBinaryState();
}

class _DisplayScreenOnBinaryState extends State<DisplayScreenOnBinary> {
  var input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert to Binary'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 14),
        child: SizedBox(
            width: 350,
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.blue,
                      controller: input,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Input Decimal Number',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          var decimal = int.parse(input.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DecimalToBinaryState(decimal)));
                        },
                        child: const Text('Convert to Binary')),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class DisplayScreenOnOctal extends StatefulWidget {
  const DisplayScreenOnOctal({super.key});

  @override
  State<DisplayScreenOnOctal> createState() => _DisplayScreenOnOctalState();
}

class _DisplayScreenOnOctalState extends State<DisplayScreenOnOctal> {
  var input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert to Octal'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 14),
        child: SizedBox(
            width: 350,
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.blue,
                      controller: input,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Input Decimal Number',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          var octal = int.parse(input.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DecimalToOctalState(octal)));
                        },
                        child: const Text('Convert to Octal')),
                  ),
                )
              ],
            )),
      ),
    );
  }
}

class DisplayScreenOnHexadecimal extends StatefulWidget {
  const DisplayScreenOnHexadecimal({super.key});

  @override
  State<DisplayScreenOnHexadecimal> createState() =>
      _DisplayScreenOnHexadecimalState();
}

class _DisplayScreenOnHexadecimalState
    extends State<DisplayScreenOnHexadecimal> {
  var input = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Convert to Hexadecimal'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 14),
        child: SizedBox(
            width: 350,
            height: 250,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: SizedBox(
                    width: 300,
                    child: TextField(
                      cursorColor: Colors.blue,
                      controller: input,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: 'Input Decimal Number',
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(50),
                          borderSide:
                              const BorderSide(color: Colors.black, width: 1),
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: ElevatedButton(
                        onPressed: () {
                          var hex = int.parse(input.text);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      DecimalToHexadecimalState(hex)));
                        },
                        child: const Text('Convert to Hexadecimal')),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
