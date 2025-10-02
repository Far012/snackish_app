import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:snack/data/item.dart';

class BottomSheetWidget extends StatelessWidget {
  final RecommendItem item;

  const BottomSheetWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        DraggableScrollableSheet(
          initialChildSize: 0.885,
          maxChildSize: 1,
          minChildSize: 0.6,
          builder: (context, scrollController) {
            return Container(
              decoration: const BoxDecoration(
                color: Color(0xFF2F2B22),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
              ),
              padding: const EdgeInsets.fromLTRB(24, 100, 24, 80),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    const SizedBox(height: 240),
                    const Text(
                      "Weitere Inhalte hier...",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            );
          },
        ),

        // 🧁 Cupcake-Bild
        Positioned(
          top: -33,
          child: Center(
            child: Image.asset(
              item.imagePath,
              width: 393,
              height: 393,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Positioned(
          left: 27,
          top: 270,
          child: GlassContainer(
            width: 340,
            height: 328.65,
            borderRadius: BorderRadius.circular(30),
            blur: 60,
            borderWidth: 1,
            borderColor: const Color.fromARGB(24, 255, 255, 255),
            color: const Color.fromARGB(5, 255, 255, 255),
            gradient: null,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      item.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        fontFamily: "SF Pro Text",
                      ),
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "assets/icon/heart.png",
                          width: 13,
                          height: 13,
                          color: Color(0x60ebebf5),
                        ),
                        SizedBox(width: 4),
                        Text(
                          item.likes,
                          style: TextStyle(color: Color(0x60ebebf5)),
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                const Text(
                  "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SF Pro Text",
                  ),
                ),
                Text(
                  item.price,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    fontFamily: "SF Pro Text",
                  ),
                ),

                const Divider(color: Colors.white54),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ingredients",
                          style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 11,
                            color: Color(0x60EBEBF5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset(
                              "assets/grafiken/Gluten.png",
                              width: 18.65,
                              height: 18.65,
                              color: Colors.white,
                            ),
                            SizedBox(width: 7.13),
                            Image.asset(
                              "assets/grafiken/Sugar.png",
                              width: 18.65,
                              height: 18.65,
                              color: Colors.white,
                            ),
                            SizedBox(width: 7.13),
                            Image.asset(
                              "assets/grafiken/LowFat.png",
                              width: 18.65,
                              height: 18.65,
                              color: Colors.white,
                            ),
                            SizedBox(width: 7.13),
                            Image.asset(
                              "assets/grafiken/Kcal.png",
                              width: 18.65,
                              height: 18.65,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Reviews",
                          style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 11,
                            color: Color(0x60EBEBF5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset(
                              "assets/grafiken/star.png",
                              width: 12.17,
                              height: 12.17,
                              color: Colors.white,
                            ),
                            Image.asset(
                              "assets/grafiken/star.png",
                              width: 12.17,
                              height: 12.17,
                              color: Colors.white,
                            ),
                            Image.asset(
                              "assets/grafiken/star.png",
                              width: 12.17,
                              height: 12.17,
                              color: Colors.white,
                            ),
                            Image.asset(
                              "assets/grafiken/star.png",
                              width: 12.17,
                              height: 12.17,
                              color: Colors.white,
                            ),
                            Image.asset(
                              "assets/grafiken/star1.png",
                              width: 12.17,
                              height: 12.17,
                            ),
                            SizedBox(width: 4),
                            Text("4.0", style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
