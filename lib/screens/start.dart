
import 'package:flutter/material.dart';
import '../outlined_button.dart';
import '../styled_text.dart';
import 'dart:math';


class StartWidget extends StatefulWidget {
  const StartWidget(this.onStartQuiz, {super.key});

  final void Function() onStartQuiz;

  @override
  State<StartWidget> createState() => _StartWidgetState();
}


class _StartWidgetState extends State<StartWidget> {
  var randomNumber = 5;

  void shake() {
    setState(() {
      randomNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
        ),
        const SizedBox(height: 90),
        const StyledText("Learn Flutter the fun way!"),
        const SizedBox(height: 30),
        OutlinedButton(
          onPressed: widget.onStartQuiz,
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white, width: 2),
          ),
          child: const Text(
            " → Start Quiz ",
            style: TextStyle(
              fontSize: 15,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ],
    );
  }
}