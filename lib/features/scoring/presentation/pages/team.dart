import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/item_view.dart';

class TeamDetail extends StatefulWidget {
  final String id;
  const TeamDetail({Key? key, required this.id}) : super(key: key);

  @override
  TeamState createState() => TeamState();
}

class TeamState extends State<TeamDetail> with TickerProviderStateMixin {
  late AnimationController controller;

  var players = [
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

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..addListener(() {
        setState(() {});
      });
    controller.repeat(reverse: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> playerList = players
        .map(
          (e) => ItemView(
            value: Item("id", e["name"].toString(), e["pic"].toString(),
                (e["tags"] as List<String>).join(', ')),
            isCard: true,
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
                'Team Name',
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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            margin: EdgeInsets.all(20),
            child: CircleAvatar(
              radius: 75,
              backgroundImage:
                  NetworkImage('https://picsum.photos/250?image=9'),
            ),
          ),
        ],
      ),
      Row(
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                'Members',
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
        children: playerList.sublist(0, 3),
      ),
      Row(
        children: playerList.sublist(3, 6),
      ),
      // Row(
      //   children: playerList.sublist(6, 9),
      // ),
    ];

    // return Expanded(
    //   child: Container(
    //     alignment: Alignment.center,
    //     child: CircularProgressIndicator(
    //       value: controller.value,
    //       semanticsLabel: 'Circular progress indicator',
    //     ),
    //   ),
    // );
    return Container(
      decoration: BoxDecoration(color: Colors.black), // to make it theme based
      child: ListView(children: list),
    );
  }
}
