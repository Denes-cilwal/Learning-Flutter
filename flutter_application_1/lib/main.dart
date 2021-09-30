import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var questions = [
      'what is your favourite color',
      'What is your favourite game'
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Title',
              textDirection: TextDirection.rtl,
              textAlign: TextAlign.center,
            ),
          ),
          body: Column(
            children: const <Widget>[],
          )),
    );
  }
}
