import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text("Favorite Screen"), backgroundColor: Colors.blue),
        body: const Center(
          child: Text(
            "Favorite Screen",
            style: TextStyle(fontSize: 30),
          ),
        ));
  }
}
