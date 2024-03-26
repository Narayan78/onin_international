import 'package:flutter/material.dart';

class DoubleLineText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double lineWidth;
  final double lineHeight;

  const DoubleLineText({
    super.key,
    required this.text,
    this.textStyle = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    this.lineWidth = 2,
    this.lineHeight = 0.2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: const Color.fromARGB(255, 173, 168, 168),
              thickness: lineHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              text,
              style: textStyle,
            ),
          ),
          Expanded(
            child: Divider(
                color: const Color.fromARGB(255, 173, 168, 168),
              thickness: lineHeight,
            ),
          ),
        ],
      ),
    );
  }
}
