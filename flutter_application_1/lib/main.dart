import 'package:flutter/material.dart';
import 'package:flutter_application_1/app_screens/first_screen.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
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
            body: const FirstScreen()));
  }
}
