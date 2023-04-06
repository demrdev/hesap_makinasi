import 'package:flutter/material.dart';
import 'display.dart';
import 'button.dart';
import 'package:math_expressions/math_expressions.dart';

class Calculator extends StatefulWidget {
  final String title;

  Calculator({Key? key, required this.title}) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String input = "";
  String output = "0";

  void onDigitPress(String buttonText) {
    setState(() {
      if (buttonText == "C") {
        input = "";
        output = "0";
      } else if (buttonText == "=") {
        try {
          Parser p = Parser();
          Expression exp = p.parse(input);
          ContextModel cm = ContextModel();
          output = exp.evaluate(EvaluationType.REAL, cm).toString();
        } catch (e) {
          output = "Hata!";
        }
      } else {
        input += buttonText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Display(input: input, output: output),
          ButtonGrid(onDigitPress: onDigitPress),
        ],
      ),
    );
  }
}
