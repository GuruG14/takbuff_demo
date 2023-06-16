import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/text.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/item_view.dart';

class TournamentDetail extends StatefulWidget {
  final String id;
  const TournamentDetail({required this.id}) : super();

  @override
  TournamentDetailState createState() => TournamentDetailState();
}

class TournamentDetailState extends State<TournamentDetail> {
  List players = [];

  List teams = [
    {
      "id": "1",
      "name": "Gravity Fighters",
      "pic": "https://picsum.photos/250?image=9"
    },
    {
      "id": "2",
      "name": "Kings United",
      "pic": "https://picsum.photos/250?image=9"
    },
    {
      "id": "3",
      "name": "Brothers In Arms",
      "pic": "https://picsum.photos/250?image=9"
    },
    {
      "id": "4",
      "name": "Raising Falcons",
      "pic": "https://picsum.photos/250?image=9"
    }
  ];

  var events = {
    "Regu": [
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      },
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      },
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      }
    ],
    "Double": [
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      },
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      },
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      }
    ],
    "Quad": [
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      },
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      },
      {
        "id": "4",
        "name": "Raising Falcons",
        "win": "2",
        "loss": "3",
        "Points": "1"
      }
    ]
  };

  var registeredPlayer = [];

  @override
  Widget build(BuildContext context) {
    List<Widget> teamList = teams
        .map((e) => ItemView(
              value: Item("", e["name"].toString(), e["pic"].toString(), ""),
              isCard: true,
            ))
        .toList();
    List<Widget> playerList = teams
        .map(
          (e) => Expanded(
            child: ItemView(
              value: Item("", e["name"].toString(), e["pic"].toString(), ""),
              isCard: true,
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
                'Tournament Name',
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
                children: ['Regu', 'Team']
                    .map(
                      (e) => (Container(
                        margin: EdgeInsets.all(5),
                        child: Text(
                          e,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ),
                        ),
                      )),
                    )
                    .toList(),
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
                'Aug 14 - 16 2023',
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
                'VOC Ground, Tiurnelveli, Tamil Nadu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
      SizedBox(
        height: 145,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: teamList,
        ),
      ),
    ];

    List<Widget> tabs = [
      SizedBox(
        height: 50.0,
        child: Tab(text: ""),
      ),
      SizedBox(
        height: 50.0,
        child: Tab(text: "Players"),
      ),
    ];

    List<Widget> tabContent = [
      Container(
        decoration:
            BoxDecoration(color: Colors.black), // to make it theme based
        child: ListView(
          children: [
            Container(
              width: 500,
              height: 400,
              alignment: Alignment.center,
              child: TextUI(
                value: "Registation is Going on",
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: TextUI(
                value: "You are playing",
                size: 16,
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "To change your option\nNavigate to profile",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
      Container(
        decoration:
            BoxDecoration(color: Colors.black), // to make it theme based
        child: Column(
          children: [
            Row(
              children: playerList.sublist(0, 3).toList(),
            ),
            Row(
              children: playerList.sublist(0, 3).toList(),
            ),
            Row(
              children: playerList.sublist(0, 3).toList(),
            ),
          ],
        ),
      ),
    ];

    events.forEach(
      (key, value) {
        tabs.add(
          SizedBox(
            height: 50.0,
            child: Tab(text: key),
          ),
        );
        List<Widget> standings = value
            .map(
              (e) => Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
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
                      radius: 15,
                      backgroundImage: NetworkImage(e["pic"].toString()),
                    ),
                    Text(
                      e["name"].toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          e["win"].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          e["loss"].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Text(
                          e["points"].toString(),
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
            .toList();
        tabContent.add(
          Container(
            decoration:
                BoxDecoration(color: Colors.black), // to make it theme based
            child: ListView(
              children: standings,
            ),
          ),
        );
      },
    );

    var tab = Expanded(
      child: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: PreferredSize(
              preferredSize: Size(100.0, 10.0),
              child: SizedBox(
                width: 500.0,
                child: TabBar(tabs: tabs),
              ),
            ),
          ),
          body: TabBarView(children: tabContent),
        ),
      ),
    );

    return Container(
      decoration: BoxDecoration(color: Colors.black), // to make it theme based
      child: Column(children: list + [tab]),
    );
  }
}
