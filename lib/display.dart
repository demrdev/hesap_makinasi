import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final String input;
  final String output;

  Display({required this.input, required this.output});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(20),
              child: Text(
                input,
                style: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.all(20),
              child: Text(
                output,
                style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    ],
  ),
);
}
}