import 'package:flutter/material.dart';

class ButtonTextUI extends StatefulWidget {
  final String value;
  final double size;
  final VoidCallback? onClick;

  ButtonTextUI({required this.value, this.size = 14, required this.onClick})
      : super();

  @override
  ButtonUIState createState() => ButtonUIState();
}

class ButtonUIState extends State<ButtonTextUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border(
            top: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
            left: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
            bottom: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
            right: BorderSide(
              color: Colors.white,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
        ),
        padding: EdgeInsets.only(left: 10, right: 10),
        child: TextButton(
          onPressed: widget.onClick,
          child: Text(
            widget.value,
            style: TextStyle(
              color: Colors.white,
              fontSize: widget.size,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
