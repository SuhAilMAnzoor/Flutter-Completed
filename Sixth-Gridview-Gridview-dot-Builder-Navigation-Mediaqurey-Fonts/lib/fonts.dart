import 'package:flutter/material.dart';

// fonts has 2 files Format TTF and OTF
class Fonts extends StatelessWidget {
  const Fonts({super.key});
// Media Qurey
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "My Fonts",
          style: TextStyle(fontFamily: "Tilt", fontWeight: FontWeight.w700),
        ),
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
