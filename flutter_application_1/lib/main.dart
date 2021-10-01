import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'My Flutter App',
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'My First App Title',
              style: TextStyle(
                color: Colors.brown,
              ),
            ),
          ),
          body: const Material(
            color: Colors.grey,
            child: Center(
              child: Text(
                'Hello flutter',
                textDirection: TextDirection.ltr,
                style: TextStyle(color: Colors.white, fontSize: 40.0),
              ),
            ),
          ),
        ));
  }
}
