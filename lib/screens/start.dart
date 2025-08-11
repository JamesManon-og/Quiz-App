import 'package:flutter/material.dart';
import '../outlined_button.dart';
import '../styled_text.dart';
import 'dart:math';

class StartWidget extends StatefulWidget {
  @override
  State<StartWidget> createState() {
    return _StartWidgetState();
  }
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
    return  Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset("assets/images/quiz-logo.png", width: 300),
          const SizedBox(height: 90),
          const StyledText( "Learn Flutter the fun way!"),
          const SizedBox(height: 30),
          const ButtonTypesGroup(enabled: true),
        ],
      );
  }
}