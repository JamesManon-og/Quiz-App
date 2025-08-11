import 'package:flutter/material.dart';

/// Flutter code sample for [ElevatedButton].

void main() {
  runApp(const ButtonApp());
}

class ButtonApp extends StatelessWidget {
  const ButtonApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(colorSchemeSeed: const Color.fromARGB(255, 255, 255, 255)),
      title: 'Button Types',
      home: const Scaffold(body: ButtonTypesExample()),
    );
  }
}

class ButtonTypesExample extends StatelessWidget {
  const ButtonTypesExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          Spacer(),
          ButtonTypesGroup(enabled: true),
          ButtonTypesGroup(enabled: false),
          Spacer(),
        ],
      ),
    );
  }
}

class ButtonTypesGroup extends StatelessWidget {
  const ButtonTypesGroup({super.key, required this.enabled});

  final bool enabled;

  @override
  Widget build(BuildContext context) {
    final VoidCallback? onPressed = enabled ? () {} : null;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[      
          OutlinedButton(onPressed: onPressed, child: const Text('→ Start  Quiz',  
          style: TextStyle(
          fontSize: 15,
          color: Color.fromARGB(255, 255, 255, 255)
              ),
            )
          ),
        ],
      ),
    );
  }
}