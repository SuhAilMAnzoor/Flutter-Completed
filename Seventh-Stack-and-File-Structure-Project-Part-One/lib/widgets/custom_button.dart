import 'package:flutter/material.dart';
import 'package:seventh_stack_structures/utilsOrConstant/app_colors.dart';
// Custom Button is used in Multiple Screens so we add it in widets folder in lib to access it globally where it needs
// This is so better option to used it everywhere rather than invidual place and manage each button code

class CustomButton extends StatelessWidget {
  final String buttonText;  // Consutuctor    // Name/Text of Button
  final void Function()? onPressed;           // What action will be formed when clicked 
  final Color? color;                        // color of button
  final FontWeight? fontWeight;
  const CustomButton({
    super.key,
    required this.buttonText,  // These all things will be required in consutuctor when you call this widget everywhere this is best approch for follow.
    this.onPressed,
    this.color, 
    this.fontWeight,   
    });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onPressed,
              child: Container(   // Container Button
                height: 55,  // This Container Height is Applied
                decoration: BoxDecoration(
                color: color ?? AppColors.custombuttoncolor,
                borderRadius: BorderRadius.circular(20), // Rounded Corner
                ),
                  child: Center(
                    child: Text(buttonText,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: fontWeight ?? FontWeight.normal
                    ),
                    ),
                  )
                ),
        );
  }
}
