import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// // font_awesome_flutter package is imported
class FontAwesome extends StatelessWidget {
  const FontAwesome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: FaIcon(FontAwesomeIcons.twitter), //Used Here,
      ),
    );
  }
}

// Call This in main File to Show Font Awesome Package
