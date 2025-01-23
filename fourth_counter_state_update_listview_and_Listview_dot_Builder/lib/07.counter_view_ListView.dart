import 'package:flutter/material.dart';

class CounterViewSeven extends StatefulWidget {
  const CounterViewSeven({super.key});

  @override
  State<CounterViewSeven> createState() => _CounterViewSevenState();
}

//Comapre Column snd ListView on Internet What is difference
//This is updating Updating screen,
// Counter App  Using ElrvatedButton > OnPressed(){}

//ONE THING I MISSED THAT WE WILL MAKE FUNCTIONS OF EVERY ACTION
// WE WANT TO PERFROM IN OnPressed Bhally 2 lines ka code q na ho make
// function of that
// LISTVIEW
class _CounterViewSevenState extends State<CounterViewSeven> {
  int counter = 0;

// Here i am make a function
  bool isZero = true;

  changeValue() {
    setState(() {
      isZero = !isZero;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        //ListView Takes Full Width and it has own ScrollViews
        child: ListView(
          children: [
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
            Text(
              isZero ? "0" : "1",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                changeValue();
              },
              child: Text("Add Value"),
            ),
          ],
        ),
      ),
    );
  }
}
