import 'package:flutter/material.dart';

class CounterViewThree extends StatefulWidget {
  const CounterViewThree({super.key});

  @override
  State<CounterViewThree> createState() => _CounterViewThreeState();
}
//This is updating counter increment on screen,
// Counter App  Using ElrvatedButton > OnPressed(){}

class _CounterViewThreeState extends State<CounterViewThree> {
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
                setState(
                  () {
                    counter++;
                  },
                );
              },
              child: Text("Add Value"),
            ),
          ],
        ),
      ),
    );
  }
}
