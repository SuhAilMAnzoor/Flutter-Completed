import 'package:flutter/material.dart';

class SelfLearning03 extends StatelessWidget {
  const SelfLearning03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My Horizontal right to Left Scrolling App",
              style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          // Add Scrolling in Screen
          scrollDirection: Axis.horizontal, // to Side Scrolling right to left
          //by Default Scrolling is Vertical top to bottom, we need to convert
          // it by Speficy ScrollDirection: Axix.horizontal
          child: Row(
            // Row show the content in row table
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
          ),
        ));
  }
}

// Screen Overflowed Issue is Solved to Add SingleChildScrollView
// Axix.horizontal for right to left content scrolling
