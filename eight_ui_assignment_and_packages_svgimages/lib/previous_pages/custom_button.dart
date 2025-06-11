import 'package:eight_ui_assignment_and_packages_svgimages/previous_pages/app_colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final void Function()? onPressed;
  final Color? color;
  const CustomButton({
    super.key,
    required this.buttonText,
    this.onPressed,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
          width: 200,
          height: 200,
          color: color ?? AppColors.orangeColor,
          child: Text(buttonText)),
    );
  }
}
