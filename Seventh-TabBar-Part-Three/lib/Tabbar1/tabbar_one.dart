import 'package:flutter/material.dart';

class TabbarOne extends StatefulWidget {
  const TabbarOne({super.key});

  @override
  State<TabbarOne> createState() => TabbarOneState();
}

class TabbarOneState extends State<TabbarOne> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 4, child: Scaffold(
      appBar: AppBar(title: const Text("WhatsApp"),
      backgroundColor: const Color.fromARGB(144, 1, 213, 8),
      bottom: const TabBar(tabs: [
      Icon(Icons.camera),
      Tab(text:("Chat")),
      Tab(text: "Status",),
      Tab(text: "Calls",)
      ]),
      ),    
      body: TabBarView(children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Welcome",
          style: TextStyle(fontSize: 50),),
          Text(""),
          Text("Camera Screen",
          style: TextStyle(fontSize: 40, color: Colors.blue),
          )
        ],),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Container(
            height: MediaQuery.of(context).size.height*0.8,
            width: MediaQuery.of(context).size.width*0.9,
            color: Colors.green,            
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Welcome",
              style: TextStyle(fontSize: 40,
              fontWeight: FontWeight.bold)),
              Text(""),
              Text(" Chat Screen",
              style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 53, 246, 59),),),
              ]),
          )  
          ],
        ),
        const Icon(Icons.flight, size: 350,),
        const Icon(Icons.call,size: 400,),
      ]),
    )
    );
  }
}