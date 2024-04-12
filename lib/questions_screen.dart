import 'package:flutter/material.dart';
import 'package:quiz_app/cidgets/custom_elevated_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});
  @override
  State<QuestionsScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Questions',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          CustomElevatedButton(answerText: "Answer one", onTap: () {}),
          CustomElevatedButton(answerText: "Answer two", onTap: () {}),
          CustomElevatedButton(answerText: "Answer three", onTap: () {}),
        ],
      ),
    );
  }
}
