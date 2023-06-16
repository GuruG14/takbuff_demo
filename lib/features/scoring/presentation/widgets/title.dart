import 'package:flutter/material.dart';

class TitleUI extends StatefulWidget {
  final String value;
  const TitleUI({required this.value}) : super();

  @override
  TitleState createState() => TitleState();
}

class TitleState extends State<TitleUI> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.value,
      style: TextStyle(
        color: Colors.white,
        fontSize: 25,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
