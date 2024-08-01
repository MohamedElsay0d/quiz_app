import 'package:flutter/material.dart';
import 'package:quiz_app/constants/constant.dart';

class EndPage extends StatelessWidget {
  const EndPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF86948F),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'The Result',
                style: TextStyle(
                    color: Color.fromARGB(255, 248, 2, 2),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),
              Text(
                '$name',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$score',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 10),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // GoTo Questions
                  Navigator.of(context).pushNamed("home");
                  name = "";
                  score = 0;
                },
                child: Text(
                  'Retest',
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
      ),
    );
  }
}
