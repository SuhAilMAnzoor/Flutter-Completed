import 'package:eight_ui_assignment_and_packages_svgimages/pages/home_page.dart';
import 'package:eight_ui_assignment_and_packages_svgimages/previous_pages/custom_button.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: CustomButton(
          color: Colors.red,
          buttonText: "Click On RED",
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
        ),
      ),
    );
  }
}
