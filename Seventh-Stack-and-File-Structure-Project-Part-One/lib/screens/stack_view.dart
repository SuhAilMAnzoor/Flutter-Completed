import 'package:flutter/material.dart';
class StackView extends StatelessWidget {
  const StackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Container(
          color: Colors.yellow,    //This is comes first in stack   
          height: 220,
            width: 220,
        ),
          Container(
            color: Colors.red,    // After Yellow Container, This Red Container Comes Second on the Stack,
            height: 200,            // So you see at on the top of yellow container in output but give some both them different 
            width: 200,             // height and width  so you can see difference 
          ),
        ],
      ),
    );
  }                    // This is commonly used in > like faceboook you saw cover photo and your profile picture is front and behind it
}                     // is background or cover photo


                    // 2nd Example in Profile Picture you saw a green icon has been shown to show that a user is currently online
