import 'package:flutter/material.dart';
import 'package:sixth_gridview_navigation_mediaqurey_fonts/colors_defined_for_file_gridviewbuilder_differently_colors_of_container_and_contains_eachcontainer_with_its_own_name.dart';

class GirdViewBuilderDifferentContainerContainsItsColorsandOwnName extends StatelessWidget {
  const GirdViewBuilderDifferentContainerContainsItsColorsandOwnName({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: colors.length, // Create grid items equal to the number of colors
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, // 3 items per row
            crossAxisSpacing: 10, // Horizontal spacing
            mainAxisSpacing: 10, // Vertical spacing
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: colors[index]['color'], // Use the color
                borderRadius: BorderRadius.circular(8), // Rounded corners
              ),
              child: Center(
                child: Text(
                  colors[index]['name'], // Use the name
                  style: const TextStyle(
                    color: Colors.white, // Text color
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
