// Replace Class Name in main.dart file so you can check out what i have learnt
//Relace ProfileView into SelfLearning01 class in the main.dart file line no 14.
// to Access This File and Check What i have done i mean what i have learnt
import 'package:flutter/material.dart';

class SelfLearning01 extends StatelessWidget {
  const SelfLearning01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Screen Over Flow Issue",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Data"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Text("Data"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Data"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Text("Data"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Data"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Text("Data"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.red,
              child: Text("Data"),
            ),
            Container(
              height: 100,
              width: 100,
              color: Colors.yellow,
              child: Text("Data"),
            ),
          ],
        ));
  }
}

// Screen Overflowed Issue in This File