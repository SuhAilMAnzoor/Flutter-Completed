import 'package:flutter/material.dart';
//Best Approch for Resubility to make a custom widget where you can make changes
//after client requrmnt  we will follow this approch ahed

// import this class in 06.five_screen dart file which i have already done it

class CustomChatTile extends StatelessWidget {
  final String? name; // ? name is nullable datatype
  final String message;
  final String time;
  const CustomChatTile({
    super.key,
    this.name, // name is optional if you dont pass arugments,
    required this.message, // any one of them can be optional if you want set,
    required this.time, // delete required if you want to any of them optional
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      child: ListTile(
        tileColor: Color.fromARGB(217, 14, 246, 6),
        leading: CircleAvatar(
          radius: 25,
          backgroundColor: Colors.red,
        ),
        title: Text(name ?? "Anonymous"), // ?? if name is entered,then,
        subtitle: Text(message), //its okay,but if not entered pass "Anonymous.
        trailing: Text(time), // Same applies with time and also message
      ),
    );
  }
}
