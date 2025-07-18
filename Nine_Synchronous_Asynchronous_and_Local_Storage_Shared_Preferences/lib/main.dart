import 'package:flutter/material.dart';
import 'package:nine_synchronous_asynchronous_and_local_storage/06_local_dataStorage_with_shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LocalDataStorage(),
    );
  }
}
