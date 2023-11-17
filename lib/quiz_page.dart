import 'package:flutter/material.dart';
import 'package:flutter_quiz/home_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizState();
}

class _QuizState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 83, 28, 179),
                Color.fromARGB(255, 55, 3, 139),
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: const HomePage(),
        ),
      ),
    );
  }
}
