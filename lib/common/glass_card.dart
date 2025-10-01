import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: GlassContainer(
          width: 350,
          height: 240,
          borderRadius: BorderRadius.circular(30),
          blur: 60,
          borderWidth: 1,
          borderColor: const Color(0x80FFFFFF),
          color: const Color(0x33FFFFFF),
          gradient: null,
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Angi's Yummy Burger",
                      style: TextStyle(
                        fontFamily: "SF Pro Text",
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/grafiken/star.png",
                          width: 15,
                          height: 13,
                          color: const Color(0xFFed80b8),
                        ),
                        const SizedBox(width: 2),
                        const Text(
                          "4.8",
                          style: TextStyle(
                            fontFamily: "SF Pro Text",
                            color: Colors.white,
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 6),
                const Text(
                  "Delish vegan burger\nthat tastes like heaven",
                  style: TextStyle(
                    fontFamily: "SF Pro Text",
                    color: Colors.white70,
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 12),
                const Text(
                  "₳ 13.99",
                  style: TextStyle(
                    fontFamily: "SF Pro Text",
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
