import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor:
                        data['correct_answer'] == data['user_answer']
                            ? const Color.fromARGB(255, 96, 209, 215)
                            : const Color.fromARGB(255, 198, 96, 215),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          data['question'] as String,
                          style: GoogleFonts.lato(
                              color: const Color.fromARGB(255, 242, 212, 247),
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          data['user_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 198, 96, 215),
                          ),
                        ),
                        Text(
                          data['correct_answer'] as String,
                          style: const TextStyle(
                            color: Color.fromARGB(255, 96, 209, 215),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
