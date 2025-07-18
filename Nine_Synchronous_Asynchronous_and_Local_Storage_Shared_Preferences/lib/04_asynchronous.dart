import 'package:flutter/material.dart';

class AsynchronousTwo extends StatefulWidget {
  const AsynchronousTwo({super.key});

  @override
  State<AsynchronousTwo> createState() => _AsynchronousTwoState();
}

// This is Same Prevoius Program Of Synchronous Function
class _AsynchronousTwoState extends State<AsynchronousTwo> {
  int counter = 0;
  int counter1 = 0;
  int counter2 = 0;

  @override

  //Fetch Data Function
  updateData() async {
    // first make it asynchronous function
    counter++;
    counter1++;
    setState(
        () {}); // now it updates state of above two variables not counter2++.
    await Future.delayed(const Duration(milliseconds: 100)); //
    counter2++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynchronous Two"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          children: [
            Text(counter.toString()), //Convert int value into String
            Text(counter1.toString()),
            Text(counter2.toString()),
            ElevatedButton(
              onPressed: () {
                updateData(); // Function Called Here
              },
              child: const Text("Fetch"),
            ),
          ],
        ),
      ),
    );
  }
}
