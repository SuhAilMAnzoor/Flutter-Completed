// <<Import this file in your main.dart file for running using class name>>
import 'package:flutter/material.dart';

// FutureBuilder,  Core Flutter
// This is Best way for understanding APIs/backend
class Futurebuilder extends StatefulWidget {
  const Futurebuilder({super.key});

  @override
  State<Futurebuilder> createState() => _FuturebuilderState();
}

class _FuturebuilderState extends State<Futurebuilder> {
// API
// Consider This is API Which provide This Application data from the backend
  Future<int> futureCounter(number) async {
    await Future.delayed(const Duration(seconds: 3));
    return number + number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: futureCounter(10),
            builder: (context, snapshot) {
              return Text(
                snapshot.data.toString(),
                style: const TextStyle(fontSize: 30),
              );
            }),
      ),
    );
  }
}
