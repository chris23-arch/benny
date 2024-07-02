import 'package:flutter/material.dart';

class QuizWinScreen extends StatefulWidget {
  const QuizWinScreen({super.key});

  @override
  State<QuizWinScreen> createState() => _QuizWinScreenState();
}

class _QuizWinScreenState extends State<QuizWinScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Quiz & Win Screen',
        style: TextStyle(fontSize: 27),
      ),
    );
  }
}
