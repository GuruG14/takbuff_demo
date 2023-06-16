import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/bloc/live_scoring.dart';
import 'package:ttl_app_code/features/scoring/presentation/bloc/team.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/match.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/title.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/button_text.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/dialog.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({Key? key}) : super(key: key);

  @override
  DashBoardState createState() => DashBoardState();
}

class DashBoardState extends State<DashBoardPage> {
  List notifications = [
    {
      'id': '12',
      "image":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
      "events": ['Regu(Team)', 'Quad(Team)', 'Regu', 'Quad', 'Double'],
      "location": 'Indoor court,Madurai Race course,\nMadurai,Tamil Nadu',
      "date": 'Aug 14,15 2023',
      "title": 'Madurai Takraw League(MTL)',
    },
    {
      'id': '13',
      "image":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
      "events": ['Regu(Team)', 'Quad(Team)', 'Regu', 'Quad', 'Double'],
      "location": 'Indoor court,Madurai Race course,\nMadurai,Tamil Nadu',
      "date": 'Aug 14,15 2023',
      "title": 'Thanjavur Takraw League(TTL)',
    },
    {
      'id': '14',
      "image":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
      "events": ['Regu(Team)', 'Quad(Team)', 'Regu', 'Quad', 'Double'],
      "location": 'Indoor court,Madurai Race course,\nMadurai,Tamil Nadu',
      "date": 'Aug 14,15 2023',
      "title": 'virudhunagaer Takraw League(VTL)',
    }
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> nots = notifications
        .asMap()
        .keys
        .toList()
        .map((e) => TextButton(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
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
                width: double.infinity,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(2),
                child: Row(
                  key: Key('upcoming_tournament'),
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Visibility(
                        visible: true,
                        child: CircleAvatar(
                          radius: 35,
                          backgroundImage:
                              NetworkImage(notifications[e]['image']),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          notifications[e]['title'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 2),
                        SizedBox(
                          width: 100,
                          child: Text(
                            notifications[e]['date'],
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
                            notifications[e]['location'],
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
                            (notifications[e]['events'] as List).join(', '),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 11,
                            ),
                          ),
                        ),
                        SizedBox(height: 2),
                        Container(
                          alignment: Alignment.bottomRight,
                          width: 369,
                          child: Text(
                            '*Response needed*',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              onPressed: () {
                showDialog(
                  barrierDismissible: false,
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
                                          notifications[e]['image']),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    Container(
                                      width: 369,
                                      padding: EdgeInsets.all(2.0),
                                      alignment: Alignment.center,
                                      child: Text(
                                        notifications[e]['title'],
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
                                        notifications[e]['date'],
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
                                        notifications[e]['location'],
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
                                        (notifications[e]['events'] as List)
                                            .join(', '),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  key: Key('IN'),
                                  child: ButtonTextUI(
                                      value: "I'm in",
                                      onClick: () {
                                        Navigator.pop(context);
                                        setState(
                                          () {
                                            notifications.removeAt(e);
                                          },
                                        );
                                      }),
                                ),
                                Expanded(
                                  key: Key('OUT'),
                                  child: ButtonTextUI(
                                    value: "I'm out",
                                    onClick: () {
                                      Navigator.pop(context);
                                      setState(
                                        () {
                                          notifications.removeAt(e);
                                        },
                                      );
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10),
                            Container(
                              key: Key('LATER'),
                              child: ButtonTextUI(
                                value: "Choose later",
                                onClick: () {
                                  Navigator.pop(context);
                                  setState(
                                    () {
                                      notifications.removeAt(e);
                                    },
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ) as Widget)
        .toList();

    List<Widget> list = nots +
        [
          MatchUI(
            match: TMatch(
                "id",
                "2/70",
                LiveScoring(
                  Team("id", "A", "", true, false),
                  Team("id", "B", "", false, true),
                ),
                "Regu",
                "Court C",
                "Live"),
          ),
          TitleUI(value: "Tounament"),
          // TournamentUI(
          //   tournament: Tournament("id", "Tirunelveli Takraw League", "",
          //       DateTime.now(), DateTime.now(), "VOC Ground"),
          // ),
          TitleUI(value: "Upcoming Matches"),
          MatchUI(
            match: TMatch(
                "id",
                "2",
                LiveScoring(
                  Team("id", "A", "", true, false),
                  Team("id", "B", "", false, true),
                ),
                "Regu",
                "Court C",
                "Tue, 24 Jun 2:30PM"),
          ),
        ];

    return ListView(children: list);
  }
}
