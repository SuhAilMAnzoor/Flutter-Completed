import 'package:flutter/material.dart';

class Mediaqurey extends StatelessWidget {
  const Mediaqurey({super.key});
// Media Qurey
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Media Qurey"),
      ),
      body: Container(
        color: Colors.red,
        height: MediaQuery.of(context).size.height * 0.5,
        width: MediaQuery.of(context).size.width * 0.5,
        // get the height and width of screen
      ),
    );
  }
}
