import 'package:flutter/material.dart';
import 'package:seventh_stack_structures/screens/home/home_page.dart';
import 'package:seventh_stack_structures/widgets/custom_button.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          // height: MediaQuery.of(context).size.height * 0.2,
          height: 55,
          child: CustomButton(
            buttonText: "Login Button",  // Text used for this button
            fontWeight: FontWeight.bold,  // Bold font weight for Login Button
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
            },
          ),
        ),
      ),
    );
  }
}
