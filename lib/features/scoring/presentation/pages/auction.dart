import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/item_view.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/text.dart';

class Auction extends StatefulWidget {
  final String id;
  const Auction({Key? key, required this.id}) : super(key: key);

  @override
  AuctionState createState() => AuctionState();
}

class AuctionState extends State<Auction> {
  var unPlayers = [
    {
      "name": "Guru",
      "tags": ['Striker'],
      "pic":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70"
    },
    {
      "name": "Jeevi",
      "tags": ['Striker'],
      "pic":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70"
    },
    {
      "name": "Ramki",
      "tags": ["Tekong"],
      "pic":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70"
    },
    {
      "name": "Arvinth",
      "tags": ["Tekong", "Feeder"],
      "pic":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70"
    },
    {
      "name": "Ganesh",
      "tags": ["Tekong", "Feeder"],
      "pic":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70"
    },
    {
      "name": "Gowtham",
      "tags": ["Striker", "Feeder"],
      "pic":
          "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70"
    },
  ];

  var teams = {
    "teamA": [
      {
        "name": "Aaru",
        "tags": [],
        "pic":
            "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
        "point": 102
      },
    ],
    "teamB": [
      {
        "name": "Guru",
        "tags": [],
        "pic":
            "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
        "point": 02
      },
    ],
    "teamC": [
      {
        "name": "Shayam",
        "tags": [],
        "pic":
            "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
        "point": 202
      },
    ],
    "teamD": [
      {
        "name": "Ram",
        "tags": [],
        "pic":
            "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70",
        "point": 402
      },
    ],
  };

  var otherQuoting = {"teamA": 10, "teamB": 12, "teamD": 15};

  @override
  Widget build(BuildContext context) {
    List<Widget> teamTabs = [];
    List<Widget> teamTabContent = [];
    teams.forEach((key, value) {
      teamTabs.add(
        SizedBox(
          height: 50.0,
          child: Tab(text: key),
        ),
      );
      List<Widget> players = value
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
                        e["point"].toString(),
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
      teamTabContent.add(
        Container(
          decoration:
              BoxDecoration(color: Colors.black), // to make it theme based
          child: ListView(
            children: players,
          ),
        ),
      );
    });

    List<Widget> quotingteams = [];
    otherQuoting.forEach((key, value) {
      quotingteams.add(Expanded(
        child: Column(
          children: [
            TextUI(
              value: key,
              isBold: true,
            ),
            TextUI(
              value: value.toString(),
              isBold: true,
            )
          ],
        ),
      ));
    });

    var spotlightPlayer = SizedBox(
      height: 350,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(15),
            child: CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(
                  "https://rukminim1.flixcart.com/image/832/832/juk4gi80/poster/z/d/m/large-newposter9484-robert-downey-jr-hollywood-pic-poster-large-original-imaf5tgyyuwcybdu.jpeg?q=70"),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              "Player name",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
            children: quotingteams,
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Expanded(
                    child: Container(
                      margin: EdgeInsets.all(5),
                      child: Column(
                        children: [
                          Text(
                            "TeamC",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                                child: Text(
                                  "-",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: 100,
                                margin: EdgeInsets.all(5),
                                child: Text(
                                  "200",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
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
                                child: Text(
                                  "+",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 100,
                child: Text(
                  "Call off",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );

    List<Widget> unplayerList = unPlayers
        .map((e) => ItemView(
              value: Item("id", e["name"].toString(), e["pic"].toString(),
                  (e["tags"] as List<String>).join(', ')),
              isCard: true,
            ))
        .cast<Widget>()
        .toList();

    List<Widget> list = [
      Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.center,
              child: Text(
                'Tournament name',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
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
            child: Container(
              height: 350,
              alignment: Alignment.center,
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
              margin: const EdgeInsets.all(5),
              child: spotlightPlayer,
            ),
          ),
        ],
      ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
        child: Row(
          children: [
            Text(
              "Pinned",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            Text(
              "All",
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      SizedBox(
        height: 145,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: unplayerList,
        ),
      )
    ];

    var tab = Expanded(
      child: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            bottom: PreferredSize(
              preferredSize: Size(100.0, 10.0),
              child: SizedBox(
                width: 500.0,
                child: TabBar(tabs: teamTabs),
              ),
            ),
          ),
          body: TabBarView(children: teamTabContent),
        ),
      ),
    );

    return Container(
      decoration: BoxDecoration(color: Colors.black), // to make it theme based
      child: Column(
        children: list + [tab],
      ),
    );
  }
}
