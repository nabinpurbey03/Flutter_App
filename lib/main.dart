import 'package:converter_app/about_author.dart';
import 'package:converter_app/display_files/display_screen.dart';
import 'package:converter_app/splash_screen/splash_screen1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Number System Converter',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const FirstScreen(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey,
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Container(
              width: double.maxFinite,
              height: 100,
              margin: const EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DisplayScreenOnBinary()));
                  },
                  child: const Text(
                    'Convert Decimal To Binary',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 100,
              margin: const EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DisplayScreenOnOctal()));
                  },
                  child: const Text(
                    'Convert Decimal To Octal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 100,
              margin: const EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DisplayScreenOnHexadecimal()));
                  },
                  child: const Text(
                    'Convert Decimal To\n       Hexadecimal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 100,
              margin: const EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DecimalDisplayScreenForBinary()));
                  },
                  child: const Text(
                    'Convert Binary To Decimal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 100,
              margin: const EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DecimalDisplayScreenForOctal()));
                  },
                  child: const Text(
                    'Convert Octal To Decimal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              width: double.maxFinite,
              height: 100,
              margin: const EdgeInsets.only(top: 7),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(60),
              ),
              child: Center(
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const DecimalDisplayScreenForHexadecimal()));
                  },
                  child: const Text(
                    'Convert Hexadecimal To\n               Decimal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const AuthorInfo()));
        },
        tooltip: 'Author Info',
        child: const Icon(Icons.account_circle_outlined,
            color: Colors.white, size: 45),
      ),
    );
  }
}
