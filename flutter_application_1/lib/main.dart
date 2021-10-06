// ignore: avoid_web_libraries_in_flutter

// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

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
