import 'package:flutter/material.dart';
// Girdview.builder how its works
// This Girdview.builder is similar to Listview.builder as till now where i understand
// But in previus we made girdview with the help of container to represent each container with different shape
// We can also do same in Girdview.builder to reduce lengthy code we can achive same like previus
// listview.builder only you know Logic what you want to built and how it works behind it logic works 
// In this File i have represent only one color red and create item count 10 means 10 grid view of red colors 
// See gridviewbuilder_differently_colors_represenation.dart and girdviewbuilder_differently_colors_represenation_of_container_and_contains_eachcontainer_with_its_own_name.dart.dart
// These Two Above Files Wil give you more and more knowlege about Girdview.builder imprort them by its names and see girdview.builder more and more
class GirdViewBuilder extends StatelessWidget {
  const GirdViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 10,    // means 10 grid view 
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10), // each row 3 container represention and top to bottom spacing is 10 ratio i gueess or widht height and left to right 10 spacing
        itemBuilder: (context, index) {
          return Container(
            color: Colors.red, // 10 red container  
          );                                     
        },     // reduced prevoius code with the help of listview.builder
      ),
    );
  }
}
