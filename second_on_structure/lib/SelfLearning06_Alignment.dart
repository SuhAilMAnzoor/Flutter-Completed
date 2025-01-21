import 'package:flutter/material.dart';

class Selflearning06 extends StatelessWidget {
  const Selflearning06({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Content Alignment Flutter App",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.grey,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
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
              ],
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
          ],
        ),
      ),
    );
  }
}

// See Last Program In Profile_View File at the end of lecture
