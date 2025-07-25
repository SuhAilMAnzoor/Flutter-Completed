import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  final List items;
  const CartView({super.key, required this.items});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cart View"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: widget.items.isEmpty
            ? const Text("Empty Cart")
            : ListView.builder(
                itemCount: widget.items.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: ListTile(
                      title: Text("${widget.items[index]["name"]}"),
                      subtitle: Text("${widget.items[index]["price"]}"),
                      trailing: IconButton(
                          onPressed: () {
                            setState(() {
                              widget.items.removeAt(index);
                            });
                          },
                          icon: const Icon(Icons.remove_circle)),
                    ),
                  );
                }),
      ),
    );
  }
}
