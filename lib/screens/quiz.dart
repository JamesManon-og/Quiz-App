import 'package:flutter/material.dart';
import '../styled_text.dart';

class QuizWidget extends StatefulWidget {
  @override
  State<QuizWidget> createState() {
    return _QuizWidgetState();
  }
}

class _QuizWidgetState extends State<QuizWidget> {
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText("QUIZ HERE"),
      ],
    );}
}