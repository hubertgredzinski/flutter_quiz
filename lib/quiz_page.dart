import 'package:flutter/material.dart';
import 'package:flutter_quiz/data/questions.dart';
import 'package:flutter_quiz/home_page.dart';
import 'package:flutter_quiz/questions_screen_page.dart';
import 'package:flutter_quiz/results_screen.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizState();
}

class _QuizState extends State<QuizPage> {
  List<String> selectedAnswers = [];
  var activeScreen = 'home-page';

  void switchScreen() {
    setState(
      () {
        activeScreen = 'questions-screen';
      },
    );
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        selectedAnswers = [];
        activeScreen = 'results-screen';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWidget = HomePage(switchScreen);

    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreenPage(
        onSelectAnswer: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultScreenPage(
        chosenAnswers: selectedAnswers,
      );
    }

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
            child: screenWidget),
      ),
    );
  }
}
