import 'package:flutter/material.dart';

class CounterViewFour extends StatefulWidget {
  const CounterViewFour({super.key});

  @override
  State<CounterViewFour> createState() => _CounterViewFourState();
}
//This is updating counter increment on screen,
// Counter App  Using ElrvatedButton > OnPressed(){}
//ONE THING I MISSED THAT WE WILL MAKE FUNCTIONS OF EVERY ACTION
// WE WANT TO PERFROM IN OnPressed Bhally 2 lines ka code q na ho

class _CounterViewFourState extends State<CounterViewFour> {
  int counter = 0;

//Make Sure you all we write all code in function for resubility and
// changes it is easy to mamange all features when click performed.


//Add Value Function used in OnPressed.
  addValue() {
    setState(
      () {
        counter++;
        print(counter);
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
