import 'package:flutter/material.dart';

class GirdViewBuilderDifferentColors extends StatelessWidget {
  const GirdViewBuilderDifferentColors({super.key});

  @override
  Widget build(BuildContext context) {
    // Define a list of colors to use in the grid
    final List<Color> colors = [
      Colors.red,
      Colors.green,
      Colors.blue,
      Colors.yellow,
      Colors.orange,
      Colors.purple,
      Colors.cyan,
      Colors.pink,
      Colors.teal,
      Colors.brown,
    ];

    return Scaffold(
      body: GridView.builder(
        itemCount: 10, // Create 10 grid items
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 items per row
          crossAxisSpacing: 10, // Horizontal spacing
          mainAxisSpacing: 10, // Vertical spacing
        ),
        itemBuilder: (context, index) {
          return Container(
            color: colors[index % colors.length], // Cycle through the colors
          );
        },
      ),
    );
  }
}
