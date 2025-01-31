import 'package:flutter/material.dart';
import 'package:seventh_stack_structures/screens/login/login_Screen_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginPage(), //
    );
    }
}