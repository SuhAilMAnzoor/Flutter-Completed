import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

// This is Local Storage - Shared Preferences to save your data locally in
// your mobile phone
class LocalDataStorage extends StatefulWidget {
  const LocalDataStorage({super.key});

  @override
  State<LocalDataStorage> createState() => _LocalDataStorageState();
}

class _LocalDataStorageState extends State<LocalDataStorage> {
  String isLogin = "";

  @override
  void initState() {
    super.initState();
    fetchInitialData();
  }

  // the state of getLoggedInState Function , User is Login in or Not After that this funcion runs
  fetchInitialData() async {
    //once getLoggedInState Function is Execute  (3)
    await getLoggedInState();
  }

  // make a function for getting local data storage value is login or not
  getLoggedInState() async {
    // (2)
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLogin = prefs.getString('isLogin') ?? "User is not Logged in";
    setState(() {});
  }

  //Login Function  (1)
  login() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    isLogin = "User is Logged in";
    prefs.setString('isLogin', isLogin);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Local Storage - Shared Preferences"),
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
