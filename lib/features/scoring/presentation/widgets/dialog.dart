import 'package:flutter/material.dart';

class DialogBox extends StatefulWidget {
  final Widget body;

  const DialogBox({required this.body}) : super();

  @override
  DialogBoxState createState() => DialogBoxState();
}

class DialogBoxState extends State<DialogBox> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    return Container(
        padding: EdgeInsets.only(left: 30, top: 30, right: 30, bottom: 30),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.black,
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
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0, 10), blurRadius: 10),
            ]),
        child: widget.body);
  }
}
