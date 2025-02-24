import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
      ),
      body: const Text("When you hit back button, You will be navigated to first screen not Second Screen ,because pushReplacement is used in second screen that will be not remebered second screen route, it will be be navigated to first route that is first screen, check second_screen for code"),
    );
  }
}
