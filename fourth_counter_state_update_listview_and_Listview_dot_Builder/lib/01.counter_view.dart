import 'package:flutter/material.dart';

class CounterViewOne extends StatefulWidget {
  const CounterViewOne({super.key});

  @override
  State<CounterViewOne> createState() => _CounterViewOneState();
}

// Only Show Text and its font  size
class _CounterViewOneState extends State<CounterViewOne> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "0",
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
      ),
    );
  }
}
