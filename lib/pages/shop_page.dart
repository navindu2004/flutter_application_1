import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_drawer.dart';
import 'package:flutter_application_1/components/my_navigation_bar.dart';
import 'package:flutter_application_1/components/my_product_tile.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Shop Page"),
          actions: [
            IconButton(
              onPressed: () => Navigator.pushNamed(context, '/cart_page'),
              icon: const Icon(Icons.shopping_cart_outlined),
            )
          ],
        ),
        drawer: const MyDrawer(),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: ListView(
          children: [
            const SizedBox(height: 25),

            // shop subtitle
            Center(
              child: Text(
                "Pick from a selected list of premium products",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                ),
              ),
            ),

            const SizedBox(height: 20),

            //product list
            SizedBox(
              height: 550,
              child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.all(15),
                itemBuilder: (context, index) {
                  // get each induvidual product from shop
                  final product = products[index];

                  // return as a product tile UI
                  return MyProductsTile(product: product);
                },
              ),
            ),
            const SizedBox(height: 25),
          ],
        ),
        bottomNavigationBar: MyNavigationBar(
          selectedIndex: 0,
          onItemSelected: (int index) {
            if (index == 0) {
              Navigator.pushNamed(context, '/shop_page');
            } else if (index == 1) {
              Navigator.pushNamed(context, '/cart_page');
            } else if (index == 2) {
              Navigator.pushNamed(context, '/settings_page');
            } else if (index == 3) {
              Navigator.pushNamed(context, '/intro_page');
            }
          },
        ));
  }
}
