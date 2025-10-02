import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class GlassCardWidget extends StatelessWidget {
  const GlassCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Stack(
          children: [
            GlassContainer(
              width: 350,
              height: 240,
              borderRadius: BorderRadius.circular(30),
              blur: 60,
              borderWidth: 1,
              borderColor: const Color.fromARGB(24, 255, 255, 255),
              color: const Color.fromARGB(5, 255, 255, 255),
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
                    const SizedBox(height: 64),
                    Container(
                      width: 93,
                      height: 40,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFBB8DE1), Color(0xFF908CF5)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(
                            color: Color(0x80EA71C5),
                            offset: Offset(0, 10),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(1.5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/details");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              "Add to order",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "SF Pro Text",
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 39.24,
              left: 131.9,
              child: SizedBox(
                width: 217.23,
                height: 217.23,
                child: Image.asset(
                  "assets/grafiken/burger.png",
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
