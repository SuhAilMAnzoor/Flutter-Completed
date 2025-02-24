import 'package:flutter/material.dart';
import 'package:sixth_navigation_another_example/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ThirdScreen()),
            );
          },
          child: const Text(
            "Go to Third Screen",
            style: TextStyle(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
