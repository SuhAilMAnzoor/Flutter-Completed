import 'package:flutter/material.dart';

//Making WhatsApp Chat UI Using Without ListTile
class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 15),
              color: Color.fromARGB(255, 238, 195, 2),
              child: const Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 25,
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    children: [
                      Text(
                        "SohAil MAnzoor",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text("KAhan ho Dear ?"),
                    ],
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Text(
                    "12:00pm",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
            ),
            SizedBox(height: 2),

            // Using LitTule
            const ListTile(
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