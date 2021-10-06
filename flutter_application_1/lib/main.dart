// ignore: avoid_web_libraries_in_flutter

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// ignore: must_be_immutable
//

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  // ignore: no_logic_in_create_state
  State<StatefulWidget> createState() {
    return Text(
      'Creating stateful',
      textDirection: TextDirection.ltr,
    );
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestions() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
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
