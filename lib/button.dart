import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  final Function(String) onDigitPress;

  const ButtonGrid({super.key, required this.onDigitPress});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcButton(text: '7', onPressed: onDigitPress),
                CalcButton(text: '8', onPressed: onDigitPress),
                CalcButton(text: '9', onPressed: onDigitPress),
                CalcButton(text: '/', onPressed: onDigitPress, color: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcButton(text: '4', onPressed: onDigitPress),
                CalcButton(text: '5', onPressed: onDigitPress),
                CalcButton(text: '6', onPressed: onDigitPress),
                CalcButton(text: '*', onPressed: onDigitPress, color: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcButton(text: '1', onPressed: onDigitPress),
                CalcButton(text: '2', onPressed: onDigitPress),
                CalcButton(text: '3', onPressed: onDigitPress),
                CalcButton(text: '-', onPressed: onDigitPress, color: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcButton(text: '0', onPressed: onDigitPress),
                CalcButton(text: '.', onPressed: onDigitPress),
                CalcButton(text: 'C', onPressed: onDigitPress),
                CalcButton(text: '+', onPressed: onDigitPress, color: Colors.orange),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                CalcButton(text: '(', onPressed: onDigitPress),
                CalcButton(text: ')', onPressed: onDigitPress),
                CalcButton(text: 'ln', onPressed: onDigitPress),
                CalcButton(text: '=', onPressed: onDigitPress, color: Colors.orange),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalcButton extends StatelessWidget {
  final String text;
  final Function(String) onPressed;
  final Color? color;

  const CalcButton({super.key, required this.text, required this.onPressed, this.color});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextButton(
        onPressed: () => onPressed(text),
        child: Text(
          text,
          style: TextStyle(fontSize: 24),
        ),
        style: TextButton.styleFrom(
          foregroundColor: Colors.black,
          backgroundColor: color ?? Colors.blue[100],
          padding: EdgeInsets.all(20),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }
}
