import 'package:flutter/material.dart';

class DoubleLineText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double lineWidth;
  final double lineHeight;
  final Color lineColor;

  const DoubleLineText({
    super.key,
    required this.text,
    this.textStyle = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    this.lineWidth = 2,
    this.lineHeight = 0.2,
     this.lineColor = const Color.fromARGB(255, 204, 201, 201) ,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Divider(
              color: lineColor,
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
                color:  lineColor,
              thickness: lineHeight,
            ),
          ),
        ],
      ),
    );
  }
}



class SingleLineText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  final double lineWidth;
  final double lineHeight;
  final Color lineColor;

  const SingleLineText({
    super.key,
    required this.text,
    this.textStyle = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    this.lineWidth = 2,
    this.lineHeight = 0.2,
     this.lineColor = const Color.fromARGB(255, 204, 201, 201) ,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15),
      child: Row(
        children: <Widget>[
       
          Padding(
            padding: const EdgeInsets.only(left: 15.0 , right: 8.0),
            child: Text(
              text,
              style: textStyle,
            ),
          ),
          Expanded(
            child: Divider(
                color:  lineColor,
              thickness: lineHeight,
            ),
          ),
        ],
      ),
    );
  }
}
