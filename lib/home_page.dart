import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/quiz-logo.png',
            width: 200,
            color: const Color.fromARGB(150, 255, 255, 255),
          ),
          const SizedBox(
            height: 40,
          ),
          const TextStyled(),
          const SizedBox(
            height: 30,
          ),
          const StartQuizButton(),
        ],
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
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        foregroundColor: Colors.white,
      ),
      label: const Text(
        'Start Quiz',
      ),
      icon: const Icon(
        Icons.start_sharp,
      ),
      onPressed: () {},
    );
  }
}
