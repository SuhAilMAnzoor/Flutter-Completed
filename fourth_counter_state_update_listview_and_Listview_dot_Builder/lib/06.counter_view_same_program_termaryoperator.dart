import 'package:flutter/material.dart';

class CounterViewSix extends StatefulWidget {
  const CounterViewSix({super.key});

  @override
  State<CounterViewSix> createState() => _CounterViewSixState();
}
//This is updating Updating screen,
// Counter App  Using ElrvatedButton > OnPressed(){}

//ONE THING I MISSED THAT WE WILL MAKE FUNCTIONS OF EVERY ACTION
// WE WANT TO PERFROM IN OnPressed Bhally 2 lines ka code q na ho make
// function of that

class _CounterViewSixState extends State<CounterViewSix> {
  int counter = 0;

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
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
