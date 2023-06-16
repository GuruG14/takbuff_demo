import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/widgets/item_view.dart';

class MatchTeamList extends StatefulWidget {
  final String id;
  const MatchTeamList({Key? key, required this.id}) : super(key: key);

  @override
  MatchTeamListState createState() => MatchTeamListState();
}

class MatchTeamListState extends State<MatchTeamList> {
  MatchTeamListState();

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

  var players = [
    {
      "name": "Regu 1",
      "play": [
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
      ]
    },
    {
      "name": "Regu 2",
      "play": [
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
      ]
    },
    {
      "name": "Regu 3",
      "play": [
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
      ]
    },
    {
      "name": "Sub",
      "play": [
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
        {
          'name': 'Player',
          'pic': '',
          'tags': [""]
        },
      ]
    }
  ];

  var groups = [];

  @override
  Widget build(BuildContext context) {
    var unplayerList = unPlayers.map((player) {
      return ItemView(
        value: Item(
          "id",
          player["name"].toString(),
          player["pic"].toString(),
          (player["tags"] as List<String>).join(', '),
        ),
      );
    }).toList();

    List<Widget> placeholders = [];
    for (var group in players) {
      placeholders.add(
        Container(
          width: 100,
          margin: EdgeInsets.all(5),
          child: Text(
            group["name"].toString(),
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
            ),
          ),
        ),
      );
      for (var player in group["play"] as List) {
        placeholders.add(
          ItemView(
            value: Item(
              "",
              player["name"].toString(),
              player["pic"].toString(),
              (player["tags"] as List<String>).join(', '),
            ),
          ),
        );
      }
    }

    return Container(
      decoration: BoxDecoration(color: Colors.black), // to make it theme based
      child: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: Text(
                  'Match No',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Event Type',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Text(
                      "VS",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 10, right: 10),
                      child: Text(
                        "Team B",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(children: placeholders),
              Column(children: unplayerList)
            ],
          ),
        ],
      ),
    );
  }
}


// const List<Item> _items = [
//   Item(
//     name: 'Spinach Pizza',
//     totalPriceCents: 1299,
//     uid: '1',
//     imageProvider: NetworkImage('https://flutter'
//         '.dev/docs/cookbook/img-files/effects/split-check/Food1.jpg'),
//   ),
//   Item(
//     name: 'Veggie Delight',
//     totalPriceCents: 799,
//     uid: '2',
//     imageProvider: NetworkImage('https://flutter'
//         '.dev/docs/cookbook/img-files/effects/split-check/Food2.jpg'),
//   ),
//   Item(
//     name: 'Chicken Parmesan',
//     totalPriceCents: 1499,
//     uid: '3',
//     imageProvider: NetworkImage('https://flutter'
//         '.dev/docs/cookbook/img-files/effects/split-check/Food3.jpg'),
//   ),
// ];

// @immutable
// class ExampleDragAndDrop extends StatefulWidget {
//   const ExampleDragAndDrop({super.key});

//   @override
//   State<ExampleDragAndDrop> createState() => _ExampleDragAndDropState();
// }

// class _ExampleDragAndDropState extends State<ExampleDragAndDrop>
//     with TickerProviderStateMixin {
//   final List<Customer> _people = [
//     Customer(
//       name: 'Makayla',
//       imageProvider: const NetworkImage('https://flutter'
//           '.dev/docs/cookbook/img-files/effects/split-check/Avatar1.jpg'),
//     ),
//     Customer(
//       name: 'Nathan',
//       imageProvider: const NetworkImage('https://flutter'
//           '.dev/docs/cookbook/img-files/effects/split-check/Avatar2.jpg'),
//     ),
//     Customer(
//       name: 'Emilio',
//       imageProvider: const NetworkImage('https://flutter'
//           '.dev/docs/cookbook/img-files/effects/split-check/Avatar3.jpg'),
//     ),
//   ];

//   final GlobalKey _draggableKey = GlobalKey();

//   void _itemDroppedOnCustomerCart({
//     required Item item,
//     required Customer customer,
//   }) {
//     setState(() {
//       customer.items.add(item);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: const Color(0xFFF7F7F7),
//       body: _buildContent(),
//     );
//   }

//   Widget _buildContent() {
//     return Stack(
//       children: [
//         SafeArea(
//           child: Column(
//             children: [
//               Expanded(
//                 child: _buildMenuList(),
//               ),
//               _buildPeopleRow(),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildMenuList() {
//     return ListView.separated(
//       padding: const EdgeInsets.all(16.0),
//       itemCount: _items.length,
//       separatorBuilder: (context, index) {
//         return const SizedBox(
//           height: 12.0,
//         );
//       },
//       itemBuilder: (context, index) {
//         final item = _items[index];
//         return _buildMenuItem(
//           item: item,
//         );
//       },
//     );
//   }

//   Widget _buildMenuItem({
//     required Item item,
//   }) {
//     return LongPressDraggable<Item>(
//       data: item,
//       dragAnchorStrategy: pointerDragAnchorStrategy,
//       feedback: DraggingListItem(
//         dragKey: _draggableKey,
//         photoProvider: item.imageProvider,
//       ),
//       child: MenuListItem(
//         name: item.name,
//         price: item.formattedTotalItemPrice,
//         photoProvider: item.imageProvider,
//       ),
//     );
//   }

//   Widget _buildPeopleRow() {
//     return Container(
//       padding: const EdgeInsets.symmetric(
//         horizontal: 8.0,
//         vertical: 20.0,
//       ),
//       child: Row(
//         children: _people.map(_buildPersonWithDropZone).toList(),
//       ),
//     );
//   }

//   Widget _buildPersonWithDropZone(Customer customer) {
//     return Expanded(
//       child: Padding(
//         padding: const EdgeInsets.symmetric(
//           horizontal: 6.0,
//         ),
//         child: DragTarget<Item>(
//           builder: (context, candidateItems, rejectedItems) {
//             return CustomerCart(
//               hasItems: customer.items.isNotEmpty,
//               highlighted: candidateItems.isNotEmpty,
//               customer: customer,
//             );
//           },
//           onAccept: (item) {
//             _itemDroppedOnCustomerCart(
//               item: item,
//               customer: customer,
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// class CustomerCart extends StatelessWidget {
//   const CustomerCart({
//     super.key,
//     required this.customer,
//     this.highlighted = false,
//     this.hasItems = false,
//   });

//   final Customer customer;
//   final bool highlighted;
//   final bool hasItems;

//   @override
//   Widget build(BuildContext context) {
//     final textColor = highlighted ? Colors.white : Colors.black;

//     return Transform.scale(
//       scale: highlighted ? 1.075 : 1.0,
//       child: Material(
//         elevation: highlighted ? 8.0 : 4.0,
//         borderRadius: BorderRadius.circular(22.0),
//         color: highlighted ? const Color(0xFFF64209) : Colors.white,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(
//             horizontal: 12.0,
//             vertical: 24.0,
//           ),
//           child: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               ClipOval(
//                 child: SizedBox(
//                   width: 46,
//                   height: 46,
//                   child: Image(
//                     image: customer.imageProvider,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 8.0),
//               Text(
//                 customer.name,
//                 style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                       color: textColor,
//                       fontWeight:
//                           hasItems ? FontWeight.normal : FontWeight.bold,
//                     ),
//               ),
//               Visibility(
//                 visible: hasItems,
//                 maintainState: true,
//                 maintainAnimation: true,
//                 maintainSize: true,
//                 child: Column(
//                   children: [
//                     const SizedBox(height: 4.0),
//                     Text(
//                       customer.formattedTotalItemPrice,
//                       style: Theme.of(context).textTheme.bodySmall!.copyWith(
//                             color: textColor,
//                             fontSize: 16.0,
//                             fontWeight: FontWeight.bold,
//                           ),
//                     ),
//                     const SizedBox(height: 4.0),
//                     Text(
//                       '${customer.items.length} item${customer.items.length != 1 ? 's' : ''}',
//                       style: Theme.of(context).textTheme.titleMedium!.copyWith(
//                             color: textColor,
//                             fontSize: 12.0,
//                           ),
//                     ),
//                   ],
//                 ),
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MenuListItem extends StatelessWidget {
//   const MenuListItem({
//     super.key,
//     this.name = '',
//     this.price = '',
//     required this.photoProvider,
//     this.isDepressed = false,
//   });

//   final String name;
//   final String price;
//   final ImageProvider photoProvider;
//   final bool isDepressed;

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       elevation: 12.0,
//       borderRadius: BorderRadius.circular(20),
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Row(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             ClipRRect(
//               borderRadius: BorderRadius.circular(12.0),
//               child: SizedBox(
//                 width: 120,
//                 height: 120,
//                 child: Center(
//                   child: AnimatedContainer(
//                     duration: const Duration(milliseconds: 100),
//                     curve: Curves.easeInOut,
//                     height: isDepressed ? 115 : 120,
//                     width: isDepressed ? 115 : 120,
//                     child: Image(
//                       image: photoProvider,
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(width: 30.0),
//             Expanded(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     name,
//                     style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                           fontSize: 18.0,
//                         ),
//                   ),
//                   const SizedBox(height: 10.0),
//                   Text(
//                     price,
//                     style: Theme.of(context).textTheme.titleMedium?.copyWith(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18.0,
//                         ),
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class DraggingListItem extends StatelessWidget {
//   const DraggingListItem({
//     super.key,
//     required this.dragKey,
//     required this.photoProvider,
//   });

//   final GlobalKey dragKey;
//   final ImageProvider photoProvider;

//   @override
//   Widget build(BuildContext context) {
//     return FractionalTranslation(
//       translation: const Offset(-0.5, -0.5),
//       child: ClipRRect(
//         key: dragKey,
//         borderRadius: BorderRadius.circular(12.0),
//         child: SizedBox(
//           height: 150,
//           width: 150,
//           child: Opacity(
//             opacity: 0.85,
//             child: Image(
//               image: photoProvider,
//               fit: BoxFit.cover,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// @immutable
// class Item {
//   const Item({
//     required this.totalPriceCents,
//     required this.name,
//     required this.uid,
//     required this.imageProvider,
//   });
//   final int totalPriceCents;
//   final String name;
//   final String uid;
//   final ImageProvider imageProvider;
//   String get formattedTotalItemPrice =>
//       '\$${(totalPriceCents / 100.0).toStringAsFixed(2)}';
// }

// class Customer {
//   Customer({
//     required this.name,
//     required this.imageProvider,
//     List<Item>? items,
//   }) : items = items ?? [];

//   final String name;
//   final ImageProvider imageProvider;
//   final List<Item> items;

//   String get formattedTotalItemPrice {
//     final totalPriceCents =
//         items.fold<int>(0, (prev, item) => prev + item.totalPriceCents);
//     return '\$${(totalPriceCents / 100.0).toStringAsFixed(2)}';
//   }
// }
