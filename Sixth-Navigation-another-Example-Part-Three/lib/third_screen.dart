import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
      ),
      body: Text("When you back, You will be at first screen not Second Screen , because pushReplacement is used in second screen, check second_screen for code"),
    );
  }
}
