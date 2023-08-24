import 'package:flutter/material.dart';

import 'package:calculator/Calculator widget.dart';

class Calculator extends StatefulWidget {
  const Calculator({super.key});
  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  int number1 = 0;
  int number2 = 0;
  String output = "";
  String result = "";
  String operator = "";
  String display="";
  String output2="";
  void onclick(String btn) {
    if (btn == "c") {
      output = "";
      result = "";
      number1 = 0;
      number2 = 0;
      display="";
      output2="";
    } else if (btn == "+" || btn == "-" || btn == "*" || btn == "/") {
      number1 = int.parse(output);
      result = "";
      operator = btn;
       output2=display+operator;
    } else if (btn == "=") {
              number2 = int.parse(output);
      if (operator == "+") {
        result = (number1 + number2).toString();
      }
      if (operator == "-") {
        result = (number1 - number2).toString();
      }
      if (operator == "*") {
        result = (number1 * number2).toString();
      }
      if (operator == "/") {
        result = (number1 / number2).toString();
      }
    } else {
      result = output + btn;
      output2= display+btn;
    }
    setState(() {
      output = result;
      display= output2;
    });
  }

  @override
  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("calculator app"),
        ),
        body: CalculatorWidget(output,display, onclick));
  }
}
