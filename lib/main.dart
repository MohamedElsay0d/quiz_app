import 'package:flutter/material.dart';
import 'package:quiz_app/screens/endPage.dart';

import 'screens/homePage.dart';
import 'screens/questionPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: homePage(),
      routes: {
        "home" : (context) => homePage(),
        "Q0": (context) => MyQuestion() , 
        "end": (context) => EndPage() , 
      },
    );
  }
}
