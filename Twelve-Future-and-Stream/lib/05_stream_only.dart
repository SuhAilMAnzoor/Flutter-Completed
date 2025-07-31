// <<Import this file in your main.dart file for running using class name>>
import 'package:flutter/material.dart';

class StreamOnly extends StatefulWidget {
  const StreamOnly({super.key});

  @override
  State<StreamOnly> createState() => _StreamOnlyState();
}

class _StreamOnlyState extends State<StreamOnly> {
// Stream
  Stream<int> streamCounter(int counter) async* {
    while (true) {
      await Future.delayed(const Duration(seconds: 1));
      yield counter++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
            stream: streamCounter(0),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(
                  snapshot.data.toString(),
                  style: TextStyle(fontSize: 30),
                );
              }
              return const CircularProgressIndicator();
            }),
      ),
    );
  }
}
