import 'package:flutter/material.dart';

class TabbarTwo extends StatefulWidget {
  const TabbarTwo({super.key});

  @override
  State<TabbarTwo> createState() => _TabbarTwoState();
}

class _TabbarTwoState extends State<TabbarTwo> {
  static const textStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        title: const Text("WhatsApp",
        style: TextStyle(color: Colors.black),),
        bottom: TabBar(
          indicator: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(40),
              boxShadow:[
              BoxShadow(
                color: Colors.black.withOpacity(0.3),
                blurRadius: 5, 
                spreadRadius: 1 // This is Rounded Spread Radius Border Of Selected Tab
                ),
               ],
              ),
              labelColor: Colors.white, // Selected Indicator Color Shows White
              unselectedLabelColor: Colors.green,
              indicatorSize: TabBarIndicatorSize.tab, // Selected Indicator Size 
          tabs: const [
          Tab(
              text: "Chat"),
          Tab(text: 'Status',),  //These are 3 Tabs those will show at the bottom of Appbar
          Tab(text: "Calls",),
          ]
          ),
      ),
      body: const TabBarView(
      children: [
        Center(child: Text("Chat Screen", style: textStyle)), // testStyle Varibale is store above 
        Center(child: Text("Status", style: textStyle,)),
        Center(child: Text("Calls", style: textStyle,)),
      ]), 
    )
    );
  }
}