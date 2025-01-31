import 'package:flutter/material.dart';
class StackviewContainerPositioned extends StatelessWidget {
  const StackviewContainerPositioned({super.key});
  //Making Online Green Status on Profile Picture
  // That tells a person is online . using Without Circle Avatar
  // Container and Position Widgets are used in Stack to achive same Work That Done in This File stack_view_with_positioned_widget.dart 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // color: Colors.grey,
          height: 70,
          width: 70,
          child: Stack(
            children: [
              Positioned(
                bottom: 0,
                child: Container(
                  color: Colors.red,
                  height: 63,
                  width: 65,
                ),
              ),
              const Positioned(
                right: 0,
                child: CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 10,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
