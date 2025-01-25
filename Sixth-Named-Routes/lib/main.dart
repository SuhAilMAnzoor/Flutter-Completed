import 'package:flutter/material.dart';
import 'package:sixth_named_routes_same/home_screen_navigation_ii.dart';
import 'package:sixth_named_routes_same/login_screen_navigation_i.dart';

void main() {
  runApp(const MyApp());
}
// Same Program  <sixth_navigation_another_example> hum ase bhi kar skte hai
// routes works  like website url  /about, home/contact  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // home: const LoginScreen(),
        initialRoute: "/",
        routes: {
          "/": (context) => LoginScreen(),
          "/firstscreen": (context) => HomeScreen()
        });
  }
}
