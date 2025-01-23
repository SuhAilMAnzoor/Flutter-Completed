import 'package:flutter/material.dart';

class CounterViewEight extends StatefulWidget {
  const CounterViewEight({super.key});

  @override
  State<CounterViewEight> createState() => _CounterViewEightState();
}

//Question> Comapre Column snd ListView on Internet What is difference

//LISTVIEW BUILDER
class _CounterViewEightState extends State<CounterViewEight> {
  List friendList = [
    "Waqar",
    "Sajjad",
    "Sohail",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          },
        ),
      ),
    );
  }
}
