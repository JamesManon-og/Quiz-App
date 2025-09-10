import 'package:flutter/material.dart';
import 'package:magic_ball/data/questions.dart';
import 'package:magic_ball/widgets/summary-list.dart';


class ResultWidget extends StatelessWidget {
  final List<String> selectedAnswers;

  //let's create a map to store the question number, the question
  //your answer and the right anwser and display it to the users
  List<Map<String, Object>> getSummary() {
    final List<Map<String, Object>> summary = [];
    for (int i = 0; i < selectedAnswers.length; i++) {
      summary.add({
        'question_index': i,
        'question': questions[i].question,
        'correct_answer': questions[i].answers[0],
        'user_answer': selectedAnswers[i],
      });
    }
    return summary;
  }

  const ResultWidget(this.selectedAnswers, {super.key});

  @override
  Widget build(Object context) {
    final summaryData = getSummary();
    final numberOfTotalQuestions = questions.length;
    final numberOfCorrectAnswers = summaryData.where((data) {
      return data['correct_answer'] == data['user_answer'];
    }).length;

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'You answer $numberOfCorrectAnswers out of $numberOfTotalQuestions questions correctly',
            style: const TextStyle(color: Colors.white, fontSize: 24),
          ),
          SummaryListWidget(summaryData),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(color: Colors.white, width: 2.0),
            ),
            child: const Text('Restart Quiz'),
          ),
        ],
      ),
    );
  }
}