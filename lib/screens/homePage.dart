// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

import 'package:quiz_app/constants/constant.dart';

class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _textController = TextEditingController();
    return Scaffold(
        backgroundColor: Color(0xFF86948F),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Text("Quiz",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
          SizedBox(
            height: 15,
          ),
          Container(
              height: 166,
              width: 177,
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/question_mark.jpeg"),
              )),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'WELCOME',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Please Enter Your Name',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      // Get Name
                      name = _textController.text;
                      // GoTo Questions
                      Navigator.of(context).pushNamed("Q0");
                    },
                    child: Text(
                      'SUBMIT',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
          )
        ])));
  }
}
