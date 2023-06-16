import 'package:flutter/material.dart';

class ButtonUI extends StatefulWidget {
  final Widget widget;
  final double size;
  final VoidCallback? onClick;

  ButtonUI({required this.widget, this.size = 14, required this.onClick})
      : super();

  @override
  ButtonUIState createState() => ButtonUIState();
}

class ButtonUIState extends State<ButtonUI> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border(
            top: BorderSide(
              color: Colors.white,
              width: 0.5,
              style: BorderStyle.solid,
            ),
            left: BorderSide(
              color: Colors.white,
              width: 0.5,
              style: BorderStyle.solid,
            ),
            bottom: BorderSide(
              color: Colors.white,
              width: 0.5,
              style: BorderStyle.solid,
            ),
            right: BorderSide(
              color: Colors.white,
              width: 0.5,
              style: BorderStyle.solid,
            ),
          ),
        ),
        padding: EdgeInsets.only(top: 10, bottom: 10),
        margin: EdgeInsets.all(2),
        child: TextButton(
          onPressed: widget.onClick,
          child: widget.widget,
        ),
      ),
    );
  }
}
