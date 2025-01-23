import 'package:flutter/material.dart';
// in this file we are talking about Margin and Padding 
class ThreeScreen extends StatelessWidget {
  const ThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20,left: 20),
              // padding: EdgeInsets.all(20),
              padding: EdgeInsets.only(left: 20, top: 10),
              color: Colors.red,
              child: Text("Hello Show",),
              height: 200,
              width: 200,
            ),

            
            // // Using LitTule
            // ListTile(
            //   tileColor: Color.fromARGB(255, 238, 195, 2),
            //   leading: CircleAvatar(
            //     radius: 25,
            //     backgroundColor: Colors.red,
            //   ),
            //   title: Text("SohAil MAnzoor"),
            //   subtitle: Text("KAhan ho Dear ?"),
            //   trailing: Text("12:00pm"),
            // ),
          ],
        ),
      ),
    );
  }
}