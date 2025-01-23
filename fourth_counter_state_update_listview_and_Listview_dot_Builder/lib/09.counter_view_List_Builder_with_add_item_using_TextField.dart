import 'package:flutter/material.dart';

class CounterViewNine extends StatefulWidget {
  const CounterViewNine({super.key});
  @override
  State<CounterViewNine> createState() => _CounterViewNineState();
}
//List View Builder, Add Item using TextField to Add Items

class _CounterViewNineState extends State<CounterViewNine> {
  TextEditingController friendListController = TextEditingController();

  List friendList = [
    "Waqar",
    "Sajjad",
    "Sohail",
  ];

  addItem() {
    setState(() {
      friendList.add("value");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: friendListController,
        ),
        actions: [
          ElevatedButton(
              onPressed: () {
                setState(() {
                  friendList.add(friendListController.text);
                  friendListController.clear();
                });
              },
              child: const Text(
                "Add Item",
              ))
        ],
      ),
      body: SafeArea(
          child: ListView.builder(
              itemCount: friendList.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(bottom: 2),
                  child: ListTile(
                    tileColor: Colors.grey,
                    title: Text(friendList[index]),
                  ),
                );
              })),
    );
  }
}
