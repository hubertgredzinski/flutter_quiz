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
      child: Container(
        margin: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              currentQuestion.text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuestion.answers.map(
              (answer) {
                return AnswerButton(
                  answer,
                  onTap: () {},
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
