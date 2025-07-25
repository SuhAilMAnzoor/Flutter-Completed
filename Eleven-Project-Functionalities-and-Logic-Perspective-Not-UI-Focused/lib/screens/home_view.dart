import 'package:eleven_project_functionality_perspective_not_ui/data/product_list.dart';
import 'package:eleven_project_functionality_perspective_not_ui/screens/cart_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List cartItems = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(cartItems.length.toString()),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: productData.length,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.only(bottom: 5),
            child: ListTile(
              tileColor: Colors.grey,
              title: Text(productData[index]["name"]),
              subtitle: Text(productData[index]["price"].toString()),
              trailing: IconButton(
                  onPressed: () {
                    setState(() {
                      cartItems.add(productData[index]);
                    });
                  },
                  icon: const Icon(Icons.add)),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartView(
                  items: cartItems,
                ),
              ));
          setState(() {});
          // print("printed");
        },
        child: const Icon(Icons.shopping_bag),
      ),
    );
  }
}
