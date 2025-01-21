// Replace Class Name in main.dart file so you can check out what i have learnt
//Relace ProfileView into SelfLearning class in the main.dart file line no 14.
// to Access This File and Check What i have done i mean what i have learnt
import 'package:flutter/material.dart';

class SelfLearning extends StatelessWidget {
  const SelfLearning({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Self Learning Flutter App",
            style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(20)),
        child: const Center(
          // Centering the text
          child: Text(
            "Data",
            style: TextStyle(
                color: Color.fromARGB(255, 6, 225,
                    141)), // Adding text color for better visibility
          ),
        ),
      ),
    );
  }
}
