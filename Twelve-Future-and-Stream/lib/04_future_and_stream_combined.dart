// <<Import this file in your main.dart file for running using class name>>
import 'package:flutter/material.dart';

class FutureAndStream extends StatefulWidget {
  const FutureAndStream({super.key});

  @override
  State<FutureAndStream> createState() => _FutureAndStreamState();
}

class _FutureAndStreamState extends State<FutureAndStream> {
// Future
  Future<int> futureCounter(number) async {
    await Future.delayed(const Duration(seconds: 3));
    return number + number;
  }

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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FutureBuilder(
                future: futureCounter(10),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text(
                      "Future: ${snapshot.data.toString()}",
                      style: const TextStyle(fontSize: 30),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                }),
            StreamBuilder(
                stream: streamCounter(0),
                builder: (context, snapshot) {
                  return Text(
                    "Stream: ${snapshot.data.toString()}",
                    style: TextStyle(fontSize: 30),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
