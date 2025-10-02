import 'package:flutter/material.dart';
import 'package:snack/common/glass_card.dart';
import 'package:snack/common/glass_chip.dart';
import 'package:snack/common/recommend_card.dart';
import 'package:snack/common/recommend_list.dart';

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
            padding: const EdgeInsets.only(top: 75),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 16, left: 20),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      "Choose Your Favourite\nSnack",
                      style: TextStyle(
                        fontFamily: "Inter",
                        letterSpacing: 0.35,
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: CategorySelector(
                    categories: categories,
                    initialSelected: categories[initialSelected],
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [GlassCardWidget()],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 57, bottom: 10, left: 24),
                  child: SizedBox(
                    width: 280,
                    height: 28,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        "We Recommend",
                        style: TextStyle(
                          fontFamily: "Inter",
                          letterSpacing: 0.35,
                          fontSize: 15,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                RecommendCardList(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
