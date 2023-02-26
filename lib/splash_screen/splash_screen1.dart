import 'dart:async';
import 'package:converter_app/main.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _SplashScreen();
}

class _SplashScreen extends State<FirstScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const MyHomePage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.cyan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Padding(
              padding: EdgeInsets.only(bottom: 350),
              child: Center(
                child: Text(
                  'Number System Converter',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Flutter',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'App By:',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              'Nabin Purbey',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
