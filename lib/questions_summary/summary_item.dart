import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.itemData});

  final Map<String, Object> itemData;

  @override
  Widget build(BuildContext context) {
    final isCorrectAnswer = itemData['userAnswer'] == itemData['correctAnswer'];
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
              questionIndex: itemData['questionIndex'] as int,
              isCorrectAnswer: isCorrectAnswer),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  (itemData['question'] as String),
                  style: GoogleFonts.lato(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  (itemData['userAnswer'] as String),
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 202, 171, 252),
                  ),
                ),
                Text(
                  (itemData['correctAnswer'] as String),
                  style: GoogleFonts.lato(
                    color: const Color.fromARGB(255, 181, 254, 246),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
