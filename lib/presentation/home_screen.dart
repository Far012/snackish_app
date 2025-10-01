import 'package:flutter/material.dart';
import 'package:snack/common/glass_card.dart';
import 'package:snack/common/glass_chip.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});
  final List<String> categories = [
    "All categories",
    "Salty",
    "Sweet",
    "Drinks",
  ];
  final int initialSelected = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "assets/hintergruende/bg_mainscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 75, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Choose Your Favourite\nSnack",
                      style: TextStyle(
                        fontFamily: "Inter",
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                CategorySelector(
                  categories: categories,
                  initialSelected: categories[initialSelected],
                ),
                SizedBox(height: 40),
                GlassCardWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
