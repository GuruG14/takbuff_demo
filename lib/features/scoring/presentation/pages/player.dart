import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/button.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/button_text.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/dialog.dart';

class PlayerDetail extends StatefulWidget {
  final String id;
  const PlayerDetail({Key? key, required this.id}) : super(key: key);

  @override
  PlayerState createState() => PlayerState();
}

class PlayerState extends State<PlayerDetail> {
  var played = [
    {
      'title': 'International',
      'count': 1,
      'events': [
        {'title': 'Regu', 'count': '3'},
        {'title': 'Team', 'count': '3'},
        {'title': 'Doubles', 'count': '3'},
      ],
    },
    {
      'title': 'National',
      'count': 12,
      'events': [
        {'title': 'Regu', 'count': '2'},
        {'title': 'Team', 'count': '1'},
        {'title': 'Doubles', 'count': '2'},
      ],
    },
    {
      'title': 'State',
      'count': 5,
      'events': [
        {'title': 'Regu', 'count': '2'},
        {'title': 'Team', 'count': '1'},
        {'title': 'Doubles', 'count': '2'},
      ],
    },
    {
      'title': 'University',
      'count': 1,
      'events': [
        {'title': 'Regu', 'count': '2'},
        {'title': 'Team', 'count': '1'},
        {'title': 'Doubles', 'count': '2'},
      ],
    },
    {
      'title': 'PSG',
      'count': 10,
      'events': [
        {'title': 'Regu', 'count': '2'},
        {'title': 'Team', 'count': '1'},
        {'title': 'Doubles', 'count': '2'},
      ],
    },
    {
      'title': 'TTL',
      'count': 10,
      'events': [
        {'title': 'Regu', 'count': '2'},
        {'title': 'Team', 'count': '1'},
        {'title': 'Doubles', 'count': '2'},
      ],
    },
    {
      'title': 'CSTL',
      'count': 10,
      'events': [
        {'title': 'Regu', 'count': '2'},
        {'title': 'Team', 'count': '1'},
        {'title': 'Doubles', 'count': '2'},
      ],
    },
  ];

  var achievements = [
    {"title": "Best Striker", "count": "1"}
  ];
  @override
  Widget build(BuildContext context) {
    List<Widget> playHistory = played
        .map(
          (e) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border(
                top: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                  style: BorderStyle.solid,
                ),
                left: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                  style: BorderStyle.solid,
                ),
                bottom: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                  style: BorderStyle.solid,
                ),
                right: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(1),
            alignment: Alignment.center,
            width: 140,
            child: Column(
              children: [
                Row(
                  children: (e['events'] as List)
                      .map(
                        (e) => Expanded(
                          child: Column(
                            children: [
                              Text(
                                e["count"].toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                              Text(
                                e["title"].toString(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 11,
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
                Text(
                  e["count"].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  e["title"].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        )
        .toList();

    List<Widget> achiveList = achievements
        .map(
          (e) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border(
                top: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                  style: BorderStyle.solid,
                ),
                left: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                  style: BorderStyle.solid,
                ),
                bottom: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                  style: BorderStyle.solid,
                ),
                right: BorderSide(
                  color: Colors.white,
                  width: 0.2,
                  style: BorderStyle.solid,
                ),
              ),
            ),
            padding: const EdgeInsets.all(5),
            margin: const EdgeInsets.all(1),
            alignment: Alignment.center,
            width: 140,
            child: Column(
              children: [
                Text(
                  e["count"].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  e["title"].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        )
        .toList();

    List<Widget> list = [
      Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.only(top: 20),
              alignment: Alignment.center,
              child: Text(
                'Player Name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Container(),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: CircleAvatar(
              radius: 75,
              backgroundImage: NetworkImage(
                  "https://encrypted-tbn2.gstatic.com/licensed-image?q=tbn:ANd9GcQijI6Sf7U-nKAfhHFmFBhVVVIxOfzI3QBeHqEjXJ7qcqbu98eqykx0UdmHrvt9Wx5hKilfZROD0mR85gk"),
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.centerRight,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        '60 kg',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        '5.7"',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5),
                      child: Text(
                        '20 yrs',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(3),
              alignment: Alignment.center,
              child: Text(
                'Striker',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              margin: EdgeInsets.all(3),
              alignment: Alignment.center,
              child: Text(
                'Tirunelveli',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      ButtonUI(
          widget: Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Visibility(
                  visible: true,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Playing',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Madurai Takraw League(MTL)',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: 385,
                    child: ButtonTextUI(
                      value: "Change",
                      onClick: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return DialogBox(
                              body: SizedBox(
                                width: 400,
                                height: 400,
                                child: Column(
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          margin: EdgeInsets.all(15),
                                          child: Visibility(
                                            visible: true,
                                            child: CircleAvatar(
                                              radius: 60,
                                              backgroundImage: NetworkImage(
                                                "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
                                              ),
                                            ),
                                          ),
                                        ),
                                        Column(children: [
                                          Container(
                                            width: 369,
                                            padding: EdgeInsets.all(2.0),
                                            alignment: Alignment.center,
                                            child: Text(
                                              'Madurai Takraw League',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 25,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            alignment: Alignment.center,
                                            width: 200,
                                            padding: EdgeInsets.all(2.0),
                                            child: Text(
                                              'Aug 14,15 2023',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 369,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(2.0),
                                            child: Text(
                                              'Indoor court,Madurai Race course,\nMadurai,Tamil Nadu',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 15,
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: 369,
                                            alignment: Alignment.center,
                                            padding: EdgeInsets.all(2.0),
                                            child: Text(
                                              "Regu(Team), Quad(Team), Regu, Quad, Double",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14,
                                              ),
                                            ),
                                          ),
                                        ]),
                                      ],
                                    ),
                                    SizedBox(height: 10),
// Expanded(
                                    //   child:
                                    ButtonTextUI(
                                        value: "I'm out", onClick: () {}),
                                    // ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  )
                ],
              ),
            ],
          ),
          onClick: () {}),
      Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Played',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        children: playHistory.sublist(0, 3),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: playHistory.sublist(3, 4),
      ),
      Row(
        children: playHistory.sublist(4, 7),
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Achievement',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: achiveList,
      ),
    ];

    return Container(
      decoration: BoxDecoration(color: Colors.black), // to make it theme based
      child: ListView(children: list),
    );
  }
}
