import 'package:flutter/material.dart';
//Simple Grid View how it works
class GirdView extends StatelessWidget {
  const GirdView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          childAspectRatio: 1, // This takes ratio not hight and width
          mainAxisSpacing: 10, // Giving space top to bottom
          crossAxisSpacing: 15, // Giving space left to right
        ),
        children: [
          Container(
            color: Colors.red,
            height: 500, // for width and height use childAspectRatio
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
          ),
          Container(
            color: Colors.red,
            height: 500,
          ),
          Container(
            color: Colors.yellow,
            height: 500,
            width: 100,
          ),
        ],
      ),
    );
  }
}
