import 'package:flutter/material.dart';
import 'package:flutter_quiz/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            ),
          ),
          child: const HomePage(),
        ),
      ),
    );
  }
}
