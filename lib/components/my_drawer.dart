import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/my_list_tile.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            // drawer header: logo
            DrawerHeader(
              child: Center(
                child: Image.asset(
                  'assets/AKNew.png',
                  height: 100,
                ),
              ),
            ),

            const SizedBox(height: 25),

            //shop tile
            MyListTile(
              text: "Restaurant",
              icon: Icons.home,
              onTap: () => Navigator.pop(context),
            ),

            // cart tile
            MyListTile(
              text: "My Cart",
              icon: Icons.shopping_cart,
              onTap: () {
                // pop drawer first
                Navigator.pop(context);

                // navigate to cart page
                Navigator.pushNamed(context, '/cart_page');
              },
            ),

            // settings tile
            MyListTile(
              text: "Settings",
              icon: Icons.settings,
              onTap: () {
                // pop drawer first
                Navigator.pop(context);

                // navigate to settings page
                Navigator.pushNamed(context, '/settings_page');
              },
            ),
          ],
        ),

        // exit shop tile
        Padding(
          padding: const EdgeInsets.only(bottom: 25.0),
          child: MyListTile(
            text: "Exit",
            icon: Icons.logout,
            onTap: () => Navigator.pushNamedAndRemoveUntil(
              context,
              '/intro_page',
              (route) => false,
            ),
          ),
        ),
      ]),
    );
  }
}
