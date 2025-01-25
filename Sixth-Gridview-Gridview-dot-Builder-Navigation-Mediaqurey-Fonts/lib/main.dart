import 'package:flutter/material.dart';
import 'package:sixth_gridview_navigation_mediaqurey_fonts/girdviewbuilder_differently_colors_represenation_of_container_and_contains_eachcontainer_with_its_own_name.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 188, 218, 231),  // Set every scaffold background color is this.
        fontFamily: "Tilt"   // fontFamily Style is used for all text to awoid this you have to specify each font there where you want use it
      ),
      home: const GirdViewBuilderDifferentContainerContainsItsColorsandOwnName(),
    );
  }
}
