import 'package:benny/Screen/quiz1screen.dart';
import 'package:benny/Screen/quizscreen.dart';
import 'package:flutter/material.dart';

class QuizWinScreen extends StatefulWidget {
  const QuizWinScreen({super.key});

  @override
  State<QuizWinScreen> createState() => _QuizWinScreenState();
}

class _QuizWinScreenState extends State<QuizWinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz & Win Screen',
          style: TextStyle(
            fontSize: 20,
            color: Colors.red,
            wordSpacing: 9,
            letterSpacing: 5,
          ),
        ),
        backgroundColor: Color(0xFF383838),
      ),
      body: Center(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
         GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => QuizScreen()),
            );
          },
          child: Container(
            padding: EdgeInsets.all(20.0),
            color: Colors.blue,
            child: Text(
              'Go to Quiz Screen',
              style: TextStyle(
                color: Colors.white,
                 fontSize: 18,
                 ),
            ),
          ),
        ),
             SizedBox(height: 20), // Add spacing between the containers
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quiz1Screen()), // Replace with your another screen widget
                );
              },
              child: Container(
                padding: EdgeInsets.all(20.0),
                color: Colors.green,
                child: Text(
                  'Go to Another Screen',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
      )
          ]
          )
      ),
    );
  }
}
