import 'package:eleven_project_functionality_with_ui_perspective_and_cart_functionalites_pt3/data/cart_items.dart';
import 'package:flutter/material.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  Map<String, Map<String, dynamic>> groupedItems = {};

  @override
  void initState() {
    super.initState();
    groupItemsWithQuantity();
  }

  void groupItemsWithQuantity() {
    groupedItems.clear();
    for (var item in cartItems) {
      // print(item);
      final name = item["name"];
      // print(name);
      if (groupedItems.containsKey(name)) {
        groupedItems[name]!["quantity"] += 1;
      } else {
        groupedItems[name] = {
          "name": item["name"],
          "price": item["price"],
          "quantity": 1,
        };
        // print(item['price']);
      }
    }
  }

  void removeOneItem(String name) {
    setState(() {
      int index = cartItems.indexWhere((item) => item["name"] == name);
      if (index != -1) {
        print(cartItems);
        cartItems.removeAt(index);
        groupItemsWithQuantity();
      }
    });
  }

  void addOneItem(String name) {
    setState(() {
      final item = cartItems.firstWhere(
        (item) => item["name"] == name,
        orElse: () => <String, dynamic>{},
      );
      if (item.isNotEmpty) {
        cartItems.add(item);
        groupItemsWithQuantity();
      }
    });
  }

  int calculateTotalPrice() {
    int total = 0;
    groupedItems.forEach((key, item) {
      final int price = item["price"] as int;
      final int quantity = item["quantity"] as int;
      total += price * quantity;
    });
    return total;
  }

  @override
  Widget build(BuildContext context) {
    final itemList = groupedItems.values.toList();
    final totalCartPrice = calculateTotalPrice();
    // print("This is last remining item in cart${itemList}");

    return Scaffold(
      appBar: AppBar(
        // automaticallyImplyLeading: false,
        title: const Text("Cart View"),
        // backgroundColor: Colors.blue,
        actions: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: Material(
              color: Colors.transparent,
              shape: const CircleBorder(),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(
                      Icons.shopping_cart,
                      color: Colors.blueGrey,
                      size: 28,
                    ),
                  ),
                  if (cartItems.isNotEmpty)
                    Positioned(
                      right: 4,
                      top: 4,
                      child: Container(
                        padding: const EdgeInsets.all(3),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        constraints: const BoxConstraints(
                          minWidth: 18,
                          minHeight: 18,
                        ),
                        child: Text(
                          '${cartItems.length}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
      body:
          cartItems.isEmpty
              ? const Center(
                child: Text(
                  "Empty cart!, Buy Some Products",
                  style: TextStyle(fontSize: 18),
                ),
              )
              : Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      padding: const EdgeInsets.all(12),
                      itemCount: itemList.length,
                      itemBuilder: (context, index) {
                        final item = itemList[index];
                        final int quantity = item["quantity"];
                        final int price = item["price"];
                        final int total = quantity * price;

                        return Card(
                          margin: const EdgeInsets.symmetric(vertical: 8),
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16),
                            child: Row(
                              children: [
                                // Item Info
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        item["name"],
                                        style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "Price: $price x $quantity",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.grey,
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Text(
                                        "Total: Rs $total",
                                        style: const TextStyle(
                                          fontSize: 14,
                                          color: Colors.black87,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // Quantity Controls
                                Row(
                                  children: [
                                    IconButton(
                                      icon: const Icon(
                                        Icons.remove_circle_outline,
                                      ),
                                      onPressed: () {
                                        removeOneItem(item["name"]);
                                      },
                                    ),
                                    Text(
                                      quantity.toString(),
                                      style: const TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                      icon: const Icon(
                                        Icons.add_circle_outline,
                                      ),
                                      onPressed: () {
                                        addOneItem(item["name"]);
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                  // Total Price & Order Button
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          offset: const Offset(0, -1),
                          blurRadius: 5,
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Left side: Total price
                        Text(
                          "Total: Rs $totalCartPrice",
                          style: const TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                        ),

                        // Right side: Order Now button
                        ElevatedButton(
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                content: Text("Order placed successfully!"),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            padding: const EdgeInsets.symmetric(
                              horizontal: 30,
                              vertical: 12,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          child: const Text(
                            "Order Now",
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}
