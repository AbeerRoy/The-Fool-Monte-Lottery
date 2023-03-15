import 'package:flutter/material.dart';
import './textInstruction.dart';

class TextControl extends StatelessWidget {
  final int value;

  final VoidCallback buttonHandler;

  TextControl({required this.value, required this.buttonHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: [
            Text(
              'Congratulations! You have won the lottery. Your lucky Number is ' +
                  value.toString(),
              style: const TextStyle(fontSize: 25),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            OutlinedButton(
              onPressed: buttonHandler,
              child: const Text('Play Lottery Again?'),
            ),
          ],
        ),
      ),
    );
  }
}
