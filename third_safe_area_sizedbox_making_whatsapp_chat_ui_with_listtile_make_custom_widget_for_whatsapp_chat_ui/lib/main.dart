import 'package:flutter/material.dart';
import 'package:third_custom_ui_custom_stateless_widget/05.four_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FourScreen(),
    );
  }
}
