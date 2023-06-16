import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/bloc/live_scoring.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/text.dart';

class MatchUI extends StatefulWidget {
  final TMatch match;
  MatchUI({required this.match}) : super();

  @override
  MatchUIState createState() => MatchUIState();
}

class MatchUIState extends State<MatchUI> {
  List<Widget> servingJ = [];
  List<Widget> servingI = [];
  servingIndicators() {
    if (widget.match.set.a.serving) {
      servingJ = repeatIcons(
          Icon(
            Icons.sports_baseball,
            size: 20,
          ),
          widget.match.set.a.serveCount + 1);
      servingI = [SizedBox(height: 20.0)];
    } else {
      servingI = repeatIcons(
          Icon(
            Icons.sports_baseball,
            size: 20,
          ),
          widget.match.set.b.serveCount + 1);
      servingJ = [SizedBox(height: 20.0)];
    }
  }

  List<Widget> repeatIcons(Icon icon, int times) {
    List<Widget> res = [];
    for (int i = 0; i < times; i++) {
      res.add(icon);
    }
    return res.toList();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: TextUI(
              value: widget.match.no,
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Tirunelveli Takraw League(TTL)',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: widget.match.set.a.toss,
                    child: Icon(
                      Icons.flag_circle,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  Visibility(
                    visible: widget.match.set.a.serveStart,
                    child: Icon(
                      Icons.sports_baseball_sharp,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Visibility(
                    visible: widget.match.set.b.toss,
                    child: Icon(
                      Icons.flag_circle,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  Visibility(
                    visible: widget.match.set.b.serveStart,
                    child: Icon(
                      Icons.sports_baseball_sharp,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    widget.match.set.a.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            children: [
              Text(
                widget.match.time,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                widget.match.type,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'VS',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    widget.match.set.b.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ];

    if (widget.match.time == 'Live') {
      list.add(
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Column(children: [
                  Text(
                    widget.match.set.a.score.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 75,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: servingJ),
                ]),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 70.0),
              child: Text(
                'Set 3',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      widget.match.set.b.score.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: servingI,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
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
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.all(2),
      child: Column(
        children: list,
      ),
    );
  }
}

class TMatch {
  String id;
  String no;
  String type;
  String location;
  String time;
  LiveScoring set;

  TMatch(this.id, this.no, this.set, this.type, this.location, this.time);
}
