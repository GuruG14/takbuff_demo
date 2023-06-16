import 'package:flutter/material.dart';
import 'package:ttl_app_code/features/scoring/presentation/pages/auction.dart';
import 'package:ttl_app_code/features/scoring/presentation/pages/dashboard1.dart';
import 'package:ttl_app_code/profil.dart';
// import 'package:ttl_app_code/features/scoring/presentation/pages/dashboard.dart';
import 'package:ttl_app_code/features/scoring/presentation/pages/match_team_list.dart';
import 'package:ttl_app_code/features/scoring/presentation/pages/match.dart';
import 'package:ttl_app_code/features/scoring/presentation/pages/team.dart';
import 'package:ttl_app_code/features/scoring/presentation/pages/tournament.dart';
import 'package:ttl_app_code/features/scoring/presentation/pages/player.dart';

// import 'dart:async';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/home',
      routes: {
        '/home': (context) => DashBoardPage(),
        '/player/:id': (context) => PlayerDetail(id: "id"),
        '/team/:id': (context) => TeamDetail(id: "id"),
        '/match/:id': (context) => Match(id: "id"),
        '/match/:id/team': (context) => MatchTeamList(id: "id"),
        '/tournament/:id': (context) => TournamentDetail(id: "id"),
        '/tournament/:id/auction': (context) => Auction(id: "id"),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          top: true,
          bottom: false,
          left: true,
          right: true,
          child: Container(
              decoration:
                  BoxDecoration(color: Colors.black), // to make it theme based
              child:
                  // ExampleDragAndDrop()
                  WhatsappProfilePage()),
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   MyHomePageState createState() => MyHomePageState();
// }

// class MyHomePageState extends State<MyHomePage> {
//   @override
//   void initState() {
//     super.initState();
//     Timer(
//         Duration(seconds: 1),
//         () => Navigator.pushReplacement(
//             context, MaterialPageRoute(builder: (context) => DashBoardPage())));
//   }

//   @override
//   Widget build(BuildContext context) {
//     return FlutterLogo(size: MediaQuery.of(context).size.height);
//   }
// }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   final _formkey = GlobalKey<FormState>();
//   String name = '';
//   // int phn = 0;
//   // int dob = 0;

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SafeArea(
//           top: true,
//           bottom: false,
//           left: true,
//           right: true,
//           child: Container(
//             key: _formkey,
//             child: Form(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   TextFormField(
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.person),
//                       hintText: 'Enter your name',
//                       labelText: 'Name',
//                     ),
//                     onChanged: (value) {
//                       setState(() {
//                         name = value;
//                       });
//                     },
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return ('please enter value');
//                       }
//                       return '';
//                     },
//                   ),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.phone),
//                       hintText: 'Enter a phone number',
//                       labelText: 'Phone',
//                     ),
//                     validator: (value) {
//                       if (value!.isEmpty) {
//                         return ('please enter value');
//                       }
//                       setState(() {
//                         name = value;
//                       });
//                       return '';
//                     },
//                   ),
//                   Text(name),
//                   TextFormField(
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.calendar_today),
//                       hintText: 'Enter your date of birth',
//                       labelText: 'Dob',
//                     ),
//                     validator: (dob) {
//                       if (dob!.isEmpty) {
//                         return ('please enter value');
//                       }
//                       return '';
//                     },
//                   ),
//                   ElevatedButton(
//                       onPressed: () {
//                         if (_formkey.currentState!.validate()) {
//                           // If the form is valid, display a Snackbar.

//                           ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                               content: Text('Data is in processing.')));
//                         }
//                       },
//                       child: Text('Submit'))
//                 ],
//               ),
//               onChanged: () => {print(_formkey.currentState!.validate())},
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Counter App',
//       home: MyHomePage(title: 'Counter App Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               // Provide a Key to this specific Text widget. This allows
//               // identifying the widget from inside the test suite,
//               // and reading the text.
//               key: const Key('counter'),
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         // Provide a Key to this button. This allows finding this
//         // specific button inside the test suite, and tapping it.
//         key: const Key('increment'),
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }
