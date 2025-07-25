import 'package:eleven_project_functionality_with_ui_perspective_and_cart_functionalites_pt3/data/cart_items.dart';
import 'package:eleven_project_functionality_with_ui_perspective_and_cart_functionalites_pt3/data/favorite_items._list.dart';
import 'package:eleven_project_functionality_with_ui_perspective_and_cart_functionalites_pt3/data/product_list.dart';
import 'package:eleven_project_functionality_with_ui_perspective_and_cart_functionalites_pt3/screens/cart_view.dart';
import 'package:eleven_project_functionality_with_ui_perspective_and_cart_functionalites_pt3/screens/favorite_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2),
                  child: Material(
                    color: Colors.transparent,
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FavoriteView(),
                          ),
                        );
                        setState(() {});
                      },
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: 50,
                        height: 50,
                        child: const Icon(
                          Icons.favorite_border_rounded,
                          color: Colors.blueGrey,
                          size: 28,
                        ),
                      ),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Material(
                    color: Colors.transparent,
                    shape: const CircleBorder(),
                    child: InkWell(
                      customBorder: const CircleBorder(),
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CartView()),
                        );
                        setState(() {});
                      },
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
                                  color: Colors.redAccent,
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
                ),
              ],
            ),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: productData.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            child: Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Product name and price
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          productData[index]["name"],
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "Rs ${productData[index]["price"]}",
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    // Add to Favorites
                    IconButton(
                      onPressed: () {
                        setState(() {
                          if (productData[index]["isFav"]) {
                            productData[index]["isFav"] = false;
                            favoriteItems.remove(productData[index]);
                          } else {
                            productData[index]["isFav"] = true;
                            favoriteItems.add(productData[index]);
                          }
                        });
                      },
                      icon: const Icon(Icons.favorite),
                      color:
                          productData[index]["isFav"]
                              ? Colors.red
                              : Colors.grey,
                    ),
                    // Add to Cart
                    IconButton(
                      onPressed: () {
                        setState(() {
                          cartItems.add(productData[index]);
                        });
                      },
                      icon: const Icon(Icons.add_shopping_cart),
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
