import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(title: const Text("Search Screen"), backgroundColor: Colors.blue),
        body: const Center(
          child: Text(
            "Search Screen",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
