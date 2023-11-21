import 'package:flutter/material.dart';

class QuestionsScreenPage extends StatefulWidget {
  const QuestionsScreenPage({super.key});

  @override
  State<QuestionsScreenPage> createState() => _QuestionsScreenPageState();
}

class _QuestionsScreenPageState extends State<QuestionsScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('question'),
        const SizedBox(
          height: 30,
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 1'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 2'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 3'),
        ),
        ElevatedButton(
          onPressed: () {},
          child: const Text('Answer 4'),
        ),
      ],
    );
  }
}
