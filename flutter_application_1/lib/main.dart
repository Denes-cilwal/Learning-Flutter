// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'package:flutter_application_1/app_screens/first_screen.dart';

// void main() => runApp(const App());

// class App extends StatelessWidget {
//   const App({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         title: 'My Flutter App',
//         home: Scaffold(
//             appBar: AppBar(
//               title: const Text(
//                 'My First App Title',
//                 style: TextStyle(
//                   color: Colors.brown,
//                 ),
//               ),
//             ),
//             body: const FirstScreen()));
//   }
// }

void main() {
  runApp(MaterialApp(
    title: "Exploring UI widgets",
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Basic List View"),
      ),
      body: getListView(),
    ),
  ));
}

Widget getListView() {
  var listView = ListView(
    children: <Widget>[
      ListTile(
        leading: const Icon(Icons.landscape),
        title: const Text("Landscape"),
        subtitle: const Text("Beautiful View !"),
        trailing: const Icon(Icons.wb_sunny),
        onTap: () {
          debugPrint("Landscape tapped");
        },
      ),

      const ListTile(
        leading: Icon(Icons.laptop_chromebook),
        title: Text("Windows"),
      ),

      ListTile(
        leading: const Icon(Icons.phone),
        title: Text("Phone"),
      ),

//      Text("Yet another element in List"),

//      Container(color: Colors.red, height: 50.0,)
    ],
  );

  return listView;
}
