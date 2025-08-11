import 'package:flutter/material.dart';
import '../styled_text.dart';

class ResultWidget extends StatefulWidget {
  @override
  State<ResultWidget> createState() {
    return _ResultWidgetState();
  }
}

class _ResultWidgetState extends State<ResultWidget> {
  @override
  Widget build(BuildContext context) {
    return 
    Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const StyledText("RESULT HERE"),
      ],
    );}
}