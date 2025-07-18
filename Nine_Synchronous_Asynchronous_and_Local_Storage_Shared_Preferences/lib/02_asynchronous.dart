import 'package:flutter/material.dart';

class AsynChronous extends StatefulWidget {
  const AsynChronous({super.key});

  @override
  State<AsynChronous> createState() => _AsynChronousState();
}

class _AsynChronousState extends State<AsynChronous> {
  @override

  //Fetch Data Function
  fetchData() async {
    // async, made this function async used for APIs
    print("Hello 1"); // print Hello 1 then wait for 4 second to get response from API
    await Future.delayed(const Duration(seconds: 4)); // Suppose this is API
    print("Hello 2"); //After Successed Repsone print remining values
    print("Hello 3");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Asynchronous"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            fetchData(); // fetchData Called Here
          },
          child: const Text("Fetch"),
        ),
      ),
    );
  }
}
