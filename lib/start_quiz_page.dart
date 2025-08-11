import 'package:flutter/material.dart';
import 'screens/quiz.dart';
import 'screens/start.dart';
import 'screens/result.dart';



const Alignment alignmentTopLeft = Alignment.topLeft;
const Alignment alignmentBottomRight = Alignment.bottomRight;


class StartingPage extends StatelessWidget {
  StartingPage({super.key});
 

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          const Color.fromARGB(255, 47, 3, 55),
          Colors.blue.shade400,
        ],
        begin: alignmentTopLeft,
        end: alignmentBottomRight
        )
      ),
      child: Center(
      child: StartWidget()
              ));
  }
}


