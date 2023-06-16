import 'package:flutter/material.dart';

class TournamentUI extends StatefulWidget {
  final Tournament tournament;
  TournamentUI({required this.tournament}) : super();

  @override
  TournamentUIState createState() => TournamentUIState();
}

class TournamentUIState extends State<TournamentUI> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.all(10),
          child: Visibility(
            visible: true,
            child: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(widget.tournament.pic),
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.tournament.name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.tournament.getDates(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 2),
            SizedBox(
              width: 300,
              child: Text(
                widget.tournament.location,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ),
            SizedBox(height: 2),
            SizedBox(
              width: 369,
              child: Text(
                widget.tournament.events.join(', '),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

// Assignement
// Action
// Aassertion

// Test
// Test Driven Dev TDD ->  refactor red green
// Tourname() t --> A
// d = t.getDates() -> A
// d = expected value -> A

class Tournament {
  String id;
  String name;
  String pic;
  DateTime start;
  DateTime end;
  String location;
  List<String> events;

  String getDuration() {
    return '';
  }

  String getDates() {
    List a = [
      'Jan',
      'Feb',
      'Mar',
      'Apr',
      'May',
      'Jun',
      'Jul',
      'Aug',
      'Sept',
      'Oct',
      'Nov',
      'Dec'
    ];

    String result = "${a[start.month - 1]} ${start.day}";
// todo can refactor to simplify
    if (start.year == end.year) {
      if ((start.month == end.month)) {
        if ((start.day != end.day)) {
          result = "$result - ${end.day}";
        }
      } else {
        result = "$result - ${a[end.month - 1]} ${end.day}";
      }
    } else {
      result = "$result ${start.year} - ${a[end.month - 1]} ${end.day}";
    }
    return "$result ${end.year}";
  }

  // two dates are same - print any one date -> MMM DD YYYY
  // two dates are same year, month but different date -> MMM DD - DD YYYY
  // two dates are same year, but different month -> MMM DD - MMM DD YYYY
  // two dates with diferent years ->  MMM DD YYYY - MMM DD YYYY

  Tournament(this.id, this.name, this.pic, this.start, this.end, this.location,
      this.events);
}
