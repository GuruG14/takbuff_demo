import 'package:flutter/material.dart';

class Auction extends StatefulWidget {
  final String id;
  const Auction({Key? key, required this.id}) : super(key: key);

  @override
  AuctionState createState() => AuctionState();
}

class AuctionState extends State<Auction> {
  var teams = [
    {
      "name": "Guru",
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

  var otherQuoting = {"teamA": 10, "teamB": 12, "teamD": 15};

  @override
  Widget build(BuildContext context) {
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
    ];

    return Column(
      children: list,
    );
  }
}
