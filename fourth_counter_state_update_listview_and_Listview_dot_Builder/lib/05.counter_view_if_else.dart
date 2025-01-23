import 'package:flutter/material.dart';

class CounterViewFive extends StatefulWidget {
  const CounterViewFive({super.key});

  @override
  State<CounterViewFive> createState() => _CounterViewFiveState();
}
//This is Updating screen,
// Counter App  Using ElrvatedButton > OnPressed(){}

//ONE THING I MISSED THAT WE WILL MAKE FUNCTIONS OF EVERY ACTION
// WE WANT TO PERFROM IN OnPressed Bhally 2 lines ka code q na ho make
// function of that

class _CounterViewFiveState extends State<CounterViewFive> {
  int counter = 0;

//Make Sure you all we write all code in function for resubility and
// changes it is easy to mamange all features when click performed.

//Add Value Function used in OnPressed.
  addValue() {
    setState(
      () {
        if (counter == 0) {
          setState(() {
            counter = 1;
          }); //using if else
        } else {
          //value will be zero or 1 when you add value
          setState(() {
            counter = 0;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Counter Value: $counter",
              style: TextStyle(fontSize: 40),
            ),
            ElevatedButton(
              onPressed: () {
                addValue(); //call the function for the job/task it perform
              },
              child: Text("Add Value"),
            ),
          ],
        ),
      ),
    );
  }
}
