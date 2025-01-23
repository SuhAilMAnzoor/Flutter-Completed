import 'package:flutter/material.dart';

//Making WhatsApp Chat UI Using ListTile Widget
class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ListTile(
              tileColor: Color.fromARGB(255, 238, 195, 2),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
              ),
              title: Text("SohAil MAnzoor"),
              subtitle: Text("KAhan ho Dear ?"),
              trailing: Text("12:00pm"),
            ),
            SizedBox(
              height: 1,
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 238, 195, 2),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
              ),
              title: Text("SohAil MAnzoor"),
              subtitle: Text("KAhan ho Dear ?"),
              trailing: Text("12:00pm"),
            ),
            SizedBox(
              height: 1,
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 238, 195, 2),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
              ),
              title: Text("SohAil MAnzoor"),
              subtitle: Text("KAhan ho Dear ?"),
              trailing: Text("12:00pm"),
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 238, 195, 2),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
              ),
              title: Text("SohAil MAnzoor"),
              subtitle: Text("KAhan ho Dear ?"),
              trailing: Text("12:00pm"),
            ),
            ListTile(
              tileColor: Color.fromARGB(255, 238, 195, 2),
              leading: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.red,
              ),
              title: Text("SohAil MAnzoor"),
              subtitle: Text("KAhan ho Dear ?"),
              trailing: Text("12:00pm"),
            ),
          ],
        ),
      ),
    );
  }
}























      // appBar: AppBar(
      //   title: const Text("My Second Flutter App",
      //       style: TextStyle(color: Colors.white)),
      //   backgroundColor: Colors.blue,
      // ),