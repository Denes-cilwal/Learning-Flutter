import 'package:flutter/material.dart';

// we want to reach out to other file from flutter-framework
// that gives us class we want to extende below
void main() {
// add code that use see in screen,widgets-widget tree
  runApp(MyApp());
}

// Touse widgets we must use class, since
// widgets is special objects here
class MyApp extends StatelessWidget {
  @override
  // flutter will call build method and build function returns Widget
  // since want to see widgets on screen that what build methods return
  Widget build(BuildContext context) {
    // MaterialApp is a widget provided by material dart
    return MaterialApp(
      title: 'Welcome to New Flutter App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Welcome to Flutter'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}
