// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

import '../constants/constant.dart';

class MyQuestion extends StatefulWidget {
  const MyQuestion({super.key});

  @override
  State<MyQuestion> createState() => _MyQuestionState();
}

class _MyQuestionState extends State<MyQuestion> {
  List<Map<String, dynamic>> questions = [
    {
      'question': 'The largest desert in the world is ?',
      'options': ['Thar', 'Kalahari', 'Sahara', 'Sonoran'],
      'correctAnswer': 'Sahara',
    },
    {
      'question': 'The metal whose salts are sensitive to light is ?',
      'options': ['Zinc', 'Sliver', 'Copper', 'Aluminum'],
      'correctAnswer': 'Zinc',
    },
    {
      'question': 'The Central Rice Research Station is situated in ?',
      'options': ['Programming Langauge', 'JDK', 'Open Source Software', 'None of the above'],
      'correctAnswer': 'Open Source Software',
    },
    // Add more questions here
  ];

  int _currentQuestionIndex = 0;
  String selectedAnswer = "";
  static bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF86948F),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Question",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 45)),
            Container(
                height: 166,
                width: 177,
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/question_mark.jpeg"),
                )),
            SizedBox(height: 16),
            Text(
              questions[_currentQuestionIndex]['question'],
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: questions[_currentQuestionIndex]['options'].length,
              itemBuilder: (context, index) {
                return buildOptionButton(
                    questions[_currentQuestionIndex]['options'][index]);
              },
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Check if the answer is correct
                if (selectedAnswer ==
                    questions[_currentQuestionIndex]['correctAnswer']) {
                  score += 1;
                  print('Correct!');
                } else {
                  print('Incorrect!');
                }
                // reset answer and move to next question
                if (_currentQuestionIndex < questions.length - 1) {
                  setState(() {
                    _currentQuestionIndex++;
                    selectedAnswer = '';
                  });
                } else {
                  // Quiz finished
                  Navigator.of(context).pushNamed("end");
                }
              },
              child: Text('Next',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildOptionButton(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedAnswer = text;
        });
        // isSelected = isSelected ? false : true;
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: Colors.grey),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
