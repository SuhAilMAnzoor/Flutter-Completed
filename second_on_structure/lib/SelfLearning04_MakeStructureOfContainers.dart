import 'package:flutter/material.dart';

//Make a Container Boxes in First Row Hold Two Containers Horzontal
//Then Second Row Hold Only One Container/Widget
//Then Third Row Holds Three Containers horizontlly
//Then Fourth Row Holds only one Container
class SelfLearning04 extends StatelessWidget {
  const SelfLearning04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Second Flutter App",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Row(
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
          Row(
            children: [
              Container(
                height: 100,
                width: 100,
                color: Colors.pink,
                child: Text("Data"),
              ),
            ],
          ),
          Row(
            children: [
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
                color: const Color.fromARGB(255, 105, 59, 255),
                child: Text("Data"),
              ),
            ],
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.red,
            child: Text("Data"),
          ),
        ],
      ),
    );
  }
}
