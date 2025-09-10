import 'package:flutter/material.dart';
import 'package:magic_ball/data/questions.dart';
import 'screens/quiz.dart';
import 'screens/start.dart';
import 'screens/result.dart';



const Alignment alignmentTopLeft = Alignment.topLeft;
const Alignment alignmentBottomRight = Alignment.bottomRight;


class StartingPage extends StatefulWidget {
  StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {
  Widget? activeScreen;
List<String> selectedAnswers = [];

  @override
  void initState() {
    activeScreen = StartWidget(switchScreen);
    super.initState();
  }

  void switchScreen() {
    setState(() {
      activeScreen = QuizWidget(
        onSelectAnswer: chooseAnswer,
      );
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);
    if (questions.length == selectedAnswers.length) {
      setState(() {
        activeScreen = ResultWidget(selectedAnswers);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.pink],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: activeScreen,
        ),
      ),
    );
  }
}
