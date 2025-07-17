import 'package:eight_ui_assignment_and_packages_svgimages/app_life_cycle.in_Stateful.dart';
import 'package:eight_ui_assignment_and_packages_svgimages/svg_images.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AppLifeCycle(),
    );
  }
}
