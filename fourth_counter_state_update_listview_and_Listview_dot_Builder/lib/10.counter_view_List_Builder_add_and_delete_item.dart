import 'package:flutter/material.dart';

class CounterViewTen extends StatefulWidget {
  const CounterViewTen({super.key});

  @override
  State<CounterViewTen> createState() => _CounterViewTenState();
}
//Comapre Column and ListView on Internet What is difference.

// Add Items Using TextField with the help of controller to get the input
//and also remove item

class _CounterViewTenState extends State<CounterViewTen> {
  TextEditingController friendListController = TextEditingController();

  List friendList = ["Waqar", "Sajjad", "Sohail"];

//Add Items using TextField
  addItem() {
    setState(() {
      friendList.add("value");
    });
  }

  // removeAt Function
  removeItem({meraBanayahowa}) {
    setState(() {
      friendList.removeAt(meraBanayahowa); //Delete item from list
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
                    trailing: IconButton(
                        onPressed: () {
                          removeItem(meraBanayahowa: index);
                        },
                        icon: const Icon(
                          Icons.delete,
                        )),
                  ),
                );
              })),
    );
  }
}
