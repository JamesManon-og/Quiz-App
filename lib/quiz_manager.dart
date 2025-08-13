import 'package:flutter/material.dart';
import 'start_quiz_page.dart';

class QuizManager extends StatefulWidget {
  @override
  State<QuizManager> createState() => _QuizManagerState();
}

class _QuizManagerState extends State<QuizManager> {
  @override
  Widget build(BuildContext context) {
    return
   MaterialApp(home: Scaffold(
    body: StartingPage()));
  }
}