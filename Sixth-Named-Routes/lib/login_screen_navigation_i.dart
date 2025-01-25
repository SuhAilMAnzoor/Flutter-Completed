import 'package:flutter/material.dart';
import 'package:sixth_named_routes_same/home_screen_navigation_ii.dart';

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
            Navigator.pushNamed(context, "/firstscreen");
          },
          child: Text("Go to Home Screen"),
        ),
      ),
    );
  }
}
