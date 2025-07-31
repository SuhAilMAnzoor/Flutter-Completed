import 'package:flutter/material.dart';

class FuturebuilderTwo extends StatefulWidget {
  const FuturebuilderTwo({super.key});

  @override
  State<FuturebuilderTwo> createState() => _FuturebuilderState();
}

class _FuturebuilderState extends State<FuturebuilderTwo> {
// Suppose This is API
  Future<int> futureCounter(number) async {
    await Future.delayed(const Duration(seconds: 3));
    return number + number;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder(
            future: futureCounter(10),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                // if snapshot has data, show this one
                return Text(
                  // return the data for showing
                  snapshot.data.toString(),
                  style: const TextStyle(fontSize: 30),
                );
              } else {
                return CircularProgressIndicator(); // if data is not available show progress indicator
              } // we make more conditions it depends on you  what logic you want to set
            }),
      ),
    );
  }
}
   
    // Like there is speed slow you we give meaning full massage  that,
    // ERROR! Check your Internet Connection

     // Humri conditions lag skte like jitne hum chahe jo k logic bane.
     // API Men men different error ho skate hai na 
     // like slow speed of your internet  and can't retrive the data
     // in jasie bhut se error