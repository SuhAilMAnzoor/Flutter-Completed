import 'package:flutter/material.dart';
import 'package:seventh_tabbar_part_three/Tabbar2/tabbar_two.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
   // Use Class name for Tabbars
  home: const TabbarTwo()
);
  }
}