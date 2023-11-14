import 'package:flutter/material.dart';
import 'package:flutter_quiz/gradient_container.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            GradientContainer(
              colors: [
                Colors.purple,
                Colors.deepPurple,
              ],
            ),
          ],
        ),
      ),
    );
  }
}
