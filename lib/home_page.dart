import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/quiz-logo.png',
              width: 200,
            ),
            const SizedBox(
              height: 40,
            ),
            const TextStyled(),
            const SizedBox(
              height: 20,
            ),
            const StartQuizButton(),
          ],
        ),
      ),
    );
  }
}

class TextStyled extends StatelessWidget {
  const TextStyled({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Learn Flutter the fun way!',
      style: TextStyle(
        color: Colors.white,
        fontSize: 18,
      ),
    );
  }
}

class StartQuizButton extends StatelessWidget {
  const StartQuizButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
      ),
      onPressed: () {},
      child: const Text('Start Quiz'),
    );
  }
}
