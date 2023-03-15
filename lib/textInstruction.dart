import 'package:flutter/material.dart';
import 'package:flutter_assignment/textControl.dart';

class TextInstruction extends StatelessWidget {
  final VoidCallback selectHandler;

  int value;

  TextInstruction({required this.value, required this.selectHandler});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30.0),
      child: Center(
        child: Column(
          children: [
            value != 0
                ? Text(
                    'Sorry! Your drawn value is  ' +
                        value.toString() +
                        ', better luck next time!',
                    style: const TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  )
                : const Text(
                    'Let\'s Play a Game of Lottery!',
                    style: TextStyle(fontSize: 25),
                    textAlign: TextAlign.center,
                  ),
            const SizedBox(height: 30),
            TextButton(
              onPressed: selectHandler,
              child: Text('Press to Make your luck!'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                overlayColor: MaterialStateProperty.resolveWith<Color?>(
                  (Set<MaterialState> states) {
                    if (states.contains(MaterialState.hovered)) {
                      return Colors.blue.withOpacity(0.20);
                    }
                    if (states.contains(MaterialState.focused) ||
                        states.contains(MaterialState.pressed)) {
                      return Colors.blue.withOpacity(0.12);
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
