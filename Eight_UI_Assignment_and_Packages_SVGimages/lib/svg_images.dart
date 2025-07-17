import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class svgImages extends StatelessWidget {
  const svgImages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SvgPicture.asset("assets/images/img.svg")),
    );
  }
}


// Call This in <main.dart> File to Show SVG Picture
// Change Class name  in main dart file