import 'package:flutter/material.dart';

class TextUI extends StatefulWidget {
  final String value;
  final double size;
  final bool isBold;

  TextUI({required this.value, this.size = 14, this.isBold = false}) : super();

  @override
  TextUIState createState() => TextUIState();
}

class TextUIState extends State<TextUI> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.value,
      style: TextStyle(
          color: Colors.white,
          fontSize: widget.size,
          fontWeight: widget.isBold ? FontWeight.bold : FontWeight.normal),
    );
  }
}
