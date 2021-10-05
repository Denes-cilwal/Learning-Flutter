import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      alignment: Alignment.center,
      color: Colors.deepPurple,
//		    width: 200.0,
//		    height: 100.0,
//		    margin: EdgeInsets.only(left: 35.0, top: 50.0),
      child: const Text(
        "Flight",
        textDirection: TextDirection.ltr,
        style: TextStyle(
            decoration: TextDecoration.none,
            fontSize: 75.0,
            fontFamily: 'Raleway',
            fontWeight: FontWeight.w700,
            color: Colors.white),
      ),
    ));
  }
}
