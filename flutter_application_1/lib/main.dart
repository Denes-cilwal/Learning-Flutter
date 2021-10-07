// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppState());
}

// create a class that extends a "statefulWidget" that returns a State in "createState()"
class MyAppState extends StatefulWidget {
  const MyAppState({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyApp();
  }
}

// create a "state" class with properties that may change
// within state class implement the build() method
// call the setState() to make the changes setSTate() to tell framework to redraw widget
class MyApp extends State<MyAppState> {
  var questionIndex = 0;

  void answerQuestions() {
    setState(() {
      questionIndex = questionIndex + 1;
      print(questionIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What is your favourite color',
      'What is your Favourite animal',
    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'My First App',
              textDirection: TextDirection.ltr,
            ),
          ),
          body: Column(
            children: [
              // const Text('The question!'),
              // use instead of harcoded logic
              Text(
                // questions.elementAt(0),
                questions[questionIndex],
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: const Text('Answer 1'),
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: const Text('Answer 2'),
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: const Text('Answer 3'),
              ),
              ElevatedButton(
                onPressed: answerQuestions,
                child: const Text('Answer 4'),
              ),
            ],
          )),
    );
  }
}
