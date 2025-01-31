import 'package:flutter/material.dart';
class StackViewWithPositioned extends StatelessWidget {
  const StackViewWithPositioned({super.key});
  // Making Online Green Status on Profile Picture
  // That Tell a person user is online with the help of Circle Avtar and Positioned Widgets
  // CircleAvatar and Position Widgets used in Stack 
  // This Same Work Achived With the Help of Container and Positioned Widget in This File
  // without_circle_avtar_and_achived_same_work_with_container_and_positionedwidget_in_stack.dart
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            CircleAvatar(
              backgroundColor: Colors.red,
              radius: 30,
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: CircleAvatar(
                backgroundColor: Colors.green,
                radius: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
