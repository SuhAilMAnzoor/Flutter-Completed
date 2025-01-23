import 'package:flutter/material.dart';

class CounterViewTwo extends StatefulWidget {
  const CounterViewTwo({super.key});

  @override
  State<CounterViewTwo> createState() => _CounterViewTwoState();
}
//This is not updating State if we increment value,
// yes, when we see debug console there we see increment but on screen
// only increment a counter value but not updating state.

// Counter App  Using ElrvatedButton > OnPressed(){}
class _CounterViewTwoState extends State<CounterViewTwo> {
  int counter = 5;

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
                counter++;
                print(counter);
              },
              child: Text("Add Value"),
            ),
          ],
        ),
      ),
    );
  }
}
