import 'package:flutter/material.dart';

import 'custom_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/myimage.jpg"),
            CustomButton(
              buttonText: "Home Button",
              onPressed: () {},
            ),
          ],
        ),
      )),
    );
  }
}
