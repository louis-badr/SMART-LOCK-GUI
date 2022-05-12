import 'package:flutter/material.dart';
import 'package:smartlock_gui/components/home_screen_carousel.dart';
import 'package:smartlock_gui/screens/categories_screen.dart';
import 'package:smartlock_gui/screens/settings_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Image carousel
          const HomeScreenCarousel(),
          // Buttons under the carousel
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    print("Inventory");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => CategoriesScreen()),
                    );
                  },
                  child: const Text(
                    "INVENTORY",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    fixedSize:
                        Size(MediaQuery.of(context).size.width / 2.5, 60),
                  ),
                ),
                IconButton(
                  iconSize: 60,
                  onPressed: () {
                    print("Settings");
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SettingsScreen()),
                    );
                  },
                  icon: const Icon(Icons.settings),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
