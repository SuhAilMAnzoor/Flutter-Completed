import 'package:flutter/material.dart';

//This is not Local Storage Based , This is Variable Based Data Storage
// if you run this app your data will not be saved once you run again this app
class VariableDataStorage extends StatefulWidget {
  const VariableDataStorage({super.key});

  @override
  State<VariableDataStorage> createState() => _VariableDataStorageState();
}

class _VariableDataStorageState extends State<VariableDataStorage> {
  String isLogin = "User is not Logged in";
  @override
  void initState(){
    super.initState();
  }

  //Login Function
  login() async {
    // first make it async function
    isLogin = "User is Logged in";
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Variable Based - Data Storage"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(isLogin),
            ElevatedButton(
              onPressed: () {
                login();
              },
              child: const Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
