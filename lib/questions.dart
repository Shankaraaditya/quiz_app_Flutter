import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/models/quiz_questions.dart';
import 'package:quiz_app/option_button.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key, required this.onSelectAnswer});

  final void Function(String answer) onSelectAnswer;

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> {
  var currrentQuestionIndex = 0;

  void answerButton(String selectedAnswer) {
    widget.onSelectAnswer(selectedAnswer);
    setState(() {
      currrentQuestionIndex++; // update the state when the anser button is // clicked
      // and increment the question index by one ... ..options should also change ....why??
    });
  }

  @override
  Widget build(context) {
    final currentQuestion = questions[currrentQuestionIndex];

    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(currentQuestion.text),
          const SizedBox(
            height: 30,
          ),
          ...currentQuestion.getshuffleList().map((item) {
            return OptionButton(
                answer: item,
                ontap: () {
                  answerButton(item); 
                });
          }),

          // OptionButton(answer: currentQuestion.answers[0], ontap: () {}),
          // OptionButton(answer: currentQuestion.answers[1], ontap: () {}),
          // OptionButton(answer: currentQuestion.answers[2], ontap: () {}),
          // OptionButton(answer: currentQuestion.answers[3], ontap: () {}),
        ],
      ),
    );
  }
}
