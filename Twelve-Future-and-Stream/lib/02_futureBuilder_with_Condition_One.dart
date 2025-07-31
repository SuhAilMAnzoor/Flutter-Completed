// <<Import this file in your main.dart file for running using class name>>
import 'package:flutter/material.dart';

// FutureBuilder,  This is Core Flutter Concept
// This is Best way for understanding APIs/backend/Firebase
// You Set Multiple Condionas here
// For Example
// When the connection shows done means something/actions
// has done , waiting for connection wait for eastblishing a connection between
class FuturebuilderOne extends StatefulWidget {
  const FuturebuilderOne({super.key});

  @override
  State<FuturebuilderOne> createState() => _FuturebuilderState();
}

class _FuturebuilderState extends State<FuturebuilderOne> {
// Suppose This is API Which provide This Application data from the backend
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
              if (snapshot.connectionState == ConnectionState.done) {
                // if connecion is done
                return Text(
                  // show the data
                  snapshot.data.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              }
              return CircularProgressIndicator(); // if data is not available show progress indicator
            }),
      ),
    );
  }
}
