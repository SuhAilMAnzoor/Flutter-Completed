import 'package:flutter/material.dart';
import 'package:sixth_gridview_navigation_mediaqurey_fonts/home_screen_navigation_ii.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
          child: Text("Go to Home Screen"),
        ),
      ),
    );
  }
}
