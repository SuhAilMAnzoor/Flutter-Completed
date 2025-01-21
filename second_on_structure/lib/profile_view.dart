import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Second Flutter App",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        color: Colors.grey,
        // width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min, // get the space of container minmum
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

// Screen Overflowed Issue is Solved to Add SingleChildScrollView
