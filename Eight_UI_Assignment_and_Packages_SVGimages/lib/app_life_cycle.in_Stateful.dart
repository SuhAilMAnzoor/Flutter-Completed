// We have Seen CreateState Already in StatefulWidget
// in this we will not cover complete life cycle
// but we Discuss initState,that is also part of App life cycle

import 'dart:async';

import 'package:eight_ui_assignment_and_packages_svgimages/previous_pages/login_page.dart';
import 'package:flutter/material.dart';

class AppLifeCycle extends StatefulWidget {
  const AppLifeCycle({super.key});

  @override
  State<AppLifeCycle> createState() => _AppLifeCycleState();
}

class _AppLifeCycleState extends State<AppLifeCycle> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
          child: Text(
        "SohAil MAnzoor Welcome",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
