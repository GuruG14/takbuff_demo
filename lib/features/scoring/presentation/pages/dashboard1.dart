import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/pages/tournament.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/button_text.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/title.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/tournament.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/button.dart';
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

  dialogPop(int noteIndex) {
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
                          backgroundImage:
                              NetworkImage(notifications[noteIndex]['image']),
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
                            notifications[noteIndex]['title'],
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
                            notifications[noteIndex]['date'],
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
                            notifications[noteIndex]['location'],
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
                            (notifications[noteIndex]['events'] as List)
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
                                notifications.removeAt(noteIndex);
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
                              notifications.removeAt(noteIndex);
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
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> nots = notifications
        .asMap()
        .keys
        .toList()
        .map((index) => ButtonUI(
              widget: Column(
                children: [
                  TournamentUI(
                    tournament: Tournament(
                        notifications[index]['id'],
                        notifications[index]['title'],
                        notifications[index]['image'],
                        DateTime.parse('2023-08-24'),
                        DateTime.parse('2024-09-25'),
                        notifications[index]['location'],
                        notifications[index]['events']),
                  ),
                  Container(
                    alignment: Alignment.bottomRight,
                    width: 400,
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
              onClick: () {
                dialogPop(index);
              },
            ) as Widget)
        .toList();

    List<Widget> list = nots +
        [
          TitleUI(value: "Tounament"),
          ButtonUI(
            widget: TournamentUI(
              tournament: Tournament(
                  "id",
                  "Tirunelveli Takraw League",
                  "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
                  DateTime.parse('2023-08-24'),
                  DateTime.parse('2024-09-25'),
                  "VOC Ground",
                  ['Regu(Team)', 'Quad(Team)', 'Regu', 'Quad', 'Double']),
            ),
            onClick: () => {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const TournamentDetail(id: "12")),
              )
            },
          )
        ];

    return Container(
      decoration: BoxDecoration(color: Colors.black), // to make it theme based
      child: ListView(children: list),
    );
  }
}
