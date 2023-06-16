import 'package:flutter/material.dart';

class ItemView extends StatefulWidget {
  final Item value;
  final bool isCard;
  ItemView({required this.value, this.isCard = false}) : super();

  @override
  PlayerUIState createState() => PlayerUIState();
}

class PlayerUIState extends State<ItemView> {
  @override
  Widget build(BuildContext context) {
    if (widget.isCard) {
      return Container(
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
        width: 139,
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(2),
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              child: Visibility(
                visible: widget.value.pic.isNotEmpty,
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                    widget.value.pic,
                  ),
                ),
              ),
            ),
            FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(
                widget.value.name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              width: 100,
              child: Text(
                widget.value.subTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      );
    } else {
      return Container(
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
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(2),
        child: Row(
          children: [
            CircleAvatar(
              radius: 10,
              backgroundImage: NetworkImage(widget.value.pic.toString()),
            ),
            Column(
              children: [
                Text(
                  widget.value.name,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  width: 100,
                  child: Text(
                    widget.value.subTitle,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      );
    }
  }
}

class Item {
  String id;
  String name;
  String pic;
  String subTitle;

  Item(this.id, this.name, this.pic, this.subTitle);
}
