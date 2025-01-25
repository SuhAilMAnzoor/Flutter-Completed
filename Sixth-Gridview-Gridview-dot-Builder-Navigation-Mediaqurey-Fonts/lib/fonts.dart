import 'package:flutter/material.dart';
import 'package:sixth_gridview_navigation_mediaqurey_fonts/font_custom_colors.dart';
class Fonts extends StatelessWidget {
  const Fonts({super.key});

  @override
  Widget build(BuildContext context) {
    // MediaQuery to get screen height dynamically
    final double spacing = MediaQuery.of(context).size.height * 0.02;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarColor, // AppBar color from AppColors
        title: const Text(
          "My Fonts", // Title for AppBar
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: spacing), // Responsive spacing
          const Center(
            child: Text(
              "This text is for test to check font style",
              style: TextStyle(
                fontSize: 16, // Example font size
                color: AppColors.textColor, // Text color from AppColors
              ),
            ),
          ),
          const Text(
            "Suhail Manzoor",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold, // Example bold style
              color: AppColors.textColor,
            ),
          ),
        ],
      ),
    );
  }
}