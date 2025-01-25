import 'package:flutter/material.dart';

class PixelsFixedHeightWidth extends StatelessWidget {
  const PixelsFixedHeightWidth({super.key});
// Pixels , Media Qurey, Expanded
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Pixels Fixed Height and Width on Screen"),
      ),
      body: Container(
        color: Colors.red,
        height: 200, // take 200 height from screen     both are fixed
        width: 200, //take 200 width from full screen
      ),
    );
  }
}
