import 'package:flutter/material.dart';

class AuthorInfo extends StatelessWidget {
  const AuthorInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Author Information',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const Center(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/author.jpeg'),
                radius: 120,
              ),
            ),
          ),
          SizedBox(
            width: 375,
            height: 350,
            child: RichText(
                text: const TextSpan(
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: Colors.grey),
              children: <TextSpan>[
                TextSpan(
                    text: 'Name: ',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                TextSpan(text: 'Nabin Purbey'),
                TextSpan(
                    text: '\nAddress: ',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                TextSpan(text: 'Kathmandu, Nepal'),
                TextSpan(
                    text: '\nQualification: ',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                TextSpan(
                    text:
                        'Bachelor of Information\n                           Technology & Management'),
                TextSpan(
                    text: '\nSkills: ',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                TextSpan(text: 'Java, Flutter, C'),
                TextSpan(
                    text: '\nEmail: ',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                TextSpan(text: 'nabinpurbey03@hotmail.com'),
                TextSpan(
                    text: '\nGithub: ',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                TextSpan(text: 'github.com/nabinpurbey03'),
                TextSpan(
                    text: '\nLinkedIn: ',
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue)),
                TextSpan(
                    text: 'linkedin.com/in/nabin-purbey-55961a230/',
                    style: TextStyle(fontSize: 13)),
              ],
            )),
          )
        ],
      ),
    );
  }
}
