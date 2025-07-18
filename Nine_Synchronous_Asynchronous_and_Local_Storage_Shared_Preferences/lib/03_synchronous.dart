import 'package:flutter/material.dart';

class SynchronousTwo extends StatefulWidget {
  const SynchronousTwo({super.key});

  @override
  State<SynchronousTwo> createState() => _SynchronousTwoState();
}

class _SynchronousTwoState extends State<SynchronousTwo> {
  int counter = 0;
  int counter1 = 0;
  int counter2 = 0;

  @override
  //Fetch Data Function
  updateData() {
    counter++; //Update counter++ =  means counter value is now 1
    counter1++;
    setState(() {}); //update state of above two variables
    counter2++; // but variable2 state is also update why ?
    // we have already seen ke setState Ke bad koi chez bhi update nahe hoti
    // but q ke setState ke bad build rebuild hota hai sara to is men counter2 variable ka status
    // update hojata hai
  } // see next dart file for it, file name 04_asynchronous.dart

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Synchronous Two"),
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
