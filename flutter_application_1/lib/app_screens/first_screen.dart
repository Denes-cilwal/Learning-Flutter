import 'dart:math';

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.grey,
      child: Center(
        child: Text(
          "your lucky random is ${generateLuckynumber()}",
          textDirection: TextDirection.ltr,
          style: const TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
    );
  }

// add some logic
  int generateLuckynumber() {
    var random = Random();
    // ignore: avoid_print
    print(random);
    int luckyNumber = random.nextInt(10);
    return luckyNumber;
  }
}
