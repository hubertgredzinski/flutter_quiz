import 'package:flutter/material.dart';
import 'package:flutter_quiz/answer_button.dart';
import 'package:flutter_quiz/data/questions.dart';

class QuestionsScreenPage extends StatefulWidget {
  const QuestionsScreenPage({super.key});

  @override
  State<QuestionsScreenPage> createState() => _QuestionsScreenPageState();
}

class _QuestionsScreenPageState extends State<QuestionsScreenPage> {
  @override
  Widget build(BuildContext context) {
    final currentQuestion = questions[0];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currentQuestion.text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          AnswerButton(
            currentQuestion.answers[0],
            onTap: () {},
          ),
          AnswerButton(
            currentQuestion.answers[1],
            onTap: () {},
          ),
          AnswerButton(
            currentQuestion.answers[2],
            onTap: () {},
          ),
          AnswerButton(
            currentQuestion.answers[3],
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
