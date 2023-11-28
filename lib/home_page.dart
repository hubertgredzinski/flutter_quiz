import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage(this.startQuiz, {super.key});

  final void Function() startQuiz;

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
          OutlinedButton.icon(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            label: Text(
              style: GoogleFonts.lato(
                color: const Color.fromARGB(150, 255, 255, 255),
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              'Start Quiz',
            ),
            icon: const Icon(
              color: Color.fromARGB(150, 255, 255, 255),
              Icons.start_sharp,
            ),
            onPressed: () {
              startQuiz();
            },
          ),
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
    return Text(
      'Learn Flutter the fun way!',
      style: GoogleFonts.lato(
        color: const Color.fromARGB(150, 255, 255, 255),
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
