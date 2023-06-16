import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/bloc/live_scoring.dart';
import 'package:ttl_app_code/features/scoring/presentation/bloc/team.dart';
import 'package:ttl_app_code/features/scoring/presentation/bloc/watch_timer.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/button_text.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/dialog.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/text.dart';

class Match extends StatefulWidget {
  final String id;
  const Match({required this.id}) : super();

  @override
  MatchState createState() => MatchState();
}

class MatchState extends State<Match> {
  Watch watch = Watch();

  LiveScoring set = LiveScoring(
    Team("id", "A", "", true, false),
    Team("id", "B", "", false, true),
  );

  var playerVisible = false;
  var timeoutVisible = false;
  var subVisible = false;

  var servingJ = <Widget>[];
  var servingI = <Widget>[];
  var timelineHistory = <Widget>[];

  var playing = [
    {'a': 'Guru', 'b': 'Jeevi'},
    {'a': 'Arvinth', 'b': 'Ganesh'},
    {'a': 'Ramki', 'b': 'Aaru'},
  ];

  var sets = [
    {'title': 'set2', 'a': 21, 'b': 10},
    {'title': 'set1', 'a': 18, 'b': 21}
  ];

  onUndoClick() {
    timelineHistory.removeAt(0);
  }

  onTimeOutClick(bool isASide, String type) {}

  onSubClick(bool isASide, String inPlayerId, String outPlayerId) {
    timelineHistory.insert(
      0,
      Container(
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
        child: Row(
          children: [
            Text(
              'SUB',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'Player 1(NO)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'Player 1(NO)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'Player 1(NO)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: Text(
                        'Player 1(NO)',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  onPointClick(bool isAScored) {
    if (watch.started) {
      set.markScore(isAScored);
      watch.reset();

      timelineHistory.insert(
        0,
        Container(
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
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(2),
          child: Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(
                        'Timeout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        set.a.score.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Text(
                        'Timeout',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      Text(
                        set.b.score.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Details',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }
  }

  servingIndicators() {
    if (set.a.serving) {
      servingJ = repeatIcons(
          Icon(
            Icons.sports_baseball,
            size: 20,
          ),
          set.a.serveCount + 1);
      servingI = [SizedBox(height: 20.0)];
    } else {
      servingI = repeatIcons(
          Icon(
            Icons.sports_baseball,
            size: 20,
          ),
          set.b.serveCount + 1);
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
    List<Widget> playA = [];
    List<Widget> playB = [];
    for (var player in playing) {
      playB.add(
        Container(
          margin: const EdgeInsets.all(2),
          padding: const EdgeInsets.all(5),
          child: Text(
            player['b'].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      );
      playA.add(
        Container(
          margin: const EdgeInsets.all(2),
          padding: const EdgeInsets.all(5),
          child: Text(
            player['a'].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
            ),
          ),
        ),
      );
    }

    List<Widget> list = [
      Row(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 20),
            child: Text(
              "",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
              ),
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                child: StreamBuilder(
                  stream: watch.value,
                  initialData: '(00:00)',
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    return Text(
                      snapshot.data,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  },
                )),
          ),
          Container(
            padding: const EdgeInsets.all(10),
            child: Text(
              'Event Type',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
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
                    visible: set.a.toss,
                    child: Icon(
                      Icons.flag_circle,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  Visibility(
                    visible: set.a.serveStart,
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
                    visible: set.b.toss,
                    child: Icon(
                      Icons.flag_circle,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                  Visibility(
                    visible: set.b.serveStart,
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
                    set.a.name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Visibility(
                    visible: playerVisible,
                    child: Column(
                      children: playA,
                    ),
                  ),
                ],
              ),
            ),
          ),
          TextButton(
            onPressed: () => {
              setState(() {
                playerVisible = !playerVisible;
              })
            },
            child: Text(
              "VS",
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
              ),
            ),
          ),
          Expanded(
            child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      set.b.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Visibility(
                      visible: playerVisible,
                      child: Column(
                        children: playB,
                      ),
                    ),
                  ],
                )),
          ),
        ],
      ),
    ];

// live scoring
    list.add(
      Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                onPointClick(true);
              },
              child: Container(
                alignment: Alignment.center,
                child: Column(children: [
                  Text(
                    set.a.score.toString(),
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
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 70.0),
            child: Text(
              'Set 3',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                onPointClick(false);
              },
              child: Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      set.b.score.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 75,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: servingI),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );

// previous set results
    list.addAll(sets.map((e) {
      return Container(
        padding: EdgeInsets.only(bottom: 5, top: 5),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Colors.white,
              width: .25,
              style: BorderStyle.solid,
            ),
          ),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  e['a'].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
            Text(
              e['title'].toString(),
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  e['b'].toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }).toList());

// main scoring
    List<Widget> scoring = [
      Visibility(
        visible: !watch.started,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: ButtonTextUI(
                    value: "Start",
                    size: 16,
                    onClick: () {
                      watch.start();
                      servingIndicators();
                    },
                  ),
                ),
                Expanded(
                  child: ButtonTextUI(
                      value: "Undo", size: 16, onClick: () => {onUndoClick()}),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ButtonTextUI(
                        value: "Timeout",
                        size: 16,
                        onClick: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogBox(
                                body: SizedBox(
                                  width: 300,
                                  height: 100,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ButtonTextUI(
                                            value: "Strategic", onClick: () {}),
                                      ),
                                      Expanded(
                                        child: ButtonTextUI(
                                            value: "Medical", onClick: () {}),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      TextUI(
                        value: "Remaining: 1",
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ButtonTextUI(
                        value: "Timeout",
                        size: 16,
                        onClick: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogBox(
                                body: SizedBox(
                                  width: 300,
                                  height: 100,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: ButtonTextUI(
                                            value: "Strategic", onClick: () {}),
                                      ),
                                      Expanded(
                                        child: ButtonTextUI(
                                            value: "Medical", onClick: () {}),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      TextUI(
                        value: "Remaining: 1",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      ButtonTextUI(
                        value: "Sub",
                        size: 16,
                        onClick: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogBox(
                                body: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: [
                                              ButtonTextUI(
                                                  value: "Player 1",
                                                  onClick: () {}),
                                              ButtonTextUI(
                                                  value: "Player 2",
                                                  onClick: () {}),
                                              ButtonTextUI(
                                                  value: "Player 3",
                                                  onClick: () {}),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: [
                                              ButtonTextUI(
                                                  value: "Sub 1",
                                                  onClick: () {}),
                                              ButtonTextUI(
                                                  value: "Sub 2",
                                                  onClick: () {}),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      TextUI(
                        value: "Remaining: 2",
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      ButtonTextUI(
                        value: "Sub",
                        size: 16,
                        onClick: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return DialogBox(
                                body: SizedBox(
                                  width: 300,
                                  height: 200,
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: [
                                              ButtonTextUI(
                                                  value: "Player 1",
                                                  onClick: () {}),
                                              ButtonTextUI(
                                                  value: "Player 2",
                                                  onClick: () {}),
                                              ButtonTextUI(
                                                  value: "Player 3",
                                                  onClick: () {}),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          alignment: Alignment.center,
                                          child: Column(
                                            children: [
                                              ButtonTextUI(
                                                  value: "Sub 1",
                                                  onClick: () {}),
                                              ButtonTextUI(
                                                  value: "Sub 2",
                                                  onClick: () {}),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                      TextUI(
                        value: "Remaining: 2",
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      Visibility(
        visible: watch.started,
        child: Expanded(
          child: ButtonTextUI(value: "Stop", onClick: () => {watch.reset()}),
        ),
      ),
    ];

// meta scoring
    // List<Widget> scoring = [
    //   Visibility(
    //     visible: true,
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: ButtonTextUI(value: "Fault", onClick: () {}),
    //         ),
    //         Expanded(
    //           child: ButtonTextUI(value: "Fault", onClick: () {}),
    //         ),
    //       ],
    //     ),
    //   ),
    //   Visibility(
    //     visible: true,
    //     child: Row(
    //       children: [
    //         Expanded(child: ButtonTextUI(value: "In", onClick: () {})),
    //         Expanded(child: ButtonTextUI(value: "Out", onClick: () {})),
    //         Expanded(child: ButtonTextUI(value: "On Net", onClick: () {})),
    //       ],
    //     ),
    //   ),
    //   Visibility(
    //     visible: true,
    //     child: Row(
    //       children: [
    //         Expanded(
    //           child: Column(
    //             children: [
    //               TextUI(
    //                 value: 'Receive',
    //                 size: 18,
    //               ),
    //               ButtonTextUI(value: "Player 1", size: 16, onClick: () {}),
    //               ButtonTextUI(value: "Player 2", size: 16, onClick: () {}),
    //               ButtonTextUI(value: "Player 3", size: 16, onClick: () {}),
    //             ],
    //           ),
    //         ),
    //         Expanded(
    //           child: Column(
    //             children: [
    //               TextUI(
    //                 value: 'Clear',
    //                 size: 18,
    //               ),
    //               ButtonTextUI(value: "Player 1", size: 16, onClick: () {}),
    //               ButtonTextUI(value: "Player 2", size: 16, onClick: () {}),
    //               ButtonTextUI(value: "Player 3", size: 16, onClick: () {}),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //   ),
    // ];

    // List<Widget> scoring = [];

    return Container(
      decoration: BoxDecoration(color: Colors.black), // to make it theme based
      child: ListView(
        children: list + scoring + timelineHistory,
      ),
    );
  }
}
