import 'package:flutter/material.dart';

class CalculatorWidget extends StatelessWidget {
 const CalculatorWidget(this.output,this.display, this.onClick, {super.key});
  final String output;
  final String display;
  final Function onClick;
  Widget customButton(String btn) {
    return Expanded(
      child: SizedBox(
        height: 100,
        child: OutlinedButton(
            // style:OutlinedButton.styleFrom(maximumSize: Size(2, 2)),
            onPressed: () => onClick(btn),
            child: Text(
              btn,
              style: const TextStyle(fontSize: 20),
            )),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Container(
            alignment: Alignment.bottomRight,
            child:  Text(
              display,
              style: TextStyle(fontSize: 20, color: Colors.lightBlue),
            ),
          ),
        ),
        Expanded(
          child: Container(
            alignment: Alignment.bottomRight,
            child: Text(
              output,
              style: const TextStyle(fontSize: 20, color: Colors.lightBlue),
            ),
          ),
        ),
        Flexible(
          child: Row(
            children: [
              customButton("9"),
              customButton("8"),
              customButton("7"),
              customButton("+"),
            ],
          ),
        ),
        Flexible(
          child: Row(
            children: [
              customButton("6"),
              customButton("5"),
              customButton("4"),
              customButton("-"),
            ],
          ),
        ),
        Flexible(
          child: Row(
            children: [
              customButton("3"),
              customButton("2"),
              customButton("1"),
              customButton("*"),
            ],
          ),
        ),
        Flexible(
          child: Row(
            children: [
              customButton("0"),
              customButton("c"),
              customButton("="),
              customButton("/"),
            ],
          ),
        ),
      ],
    );
  }
}
