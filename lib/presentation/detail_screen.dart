import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:snack/common/selector_quantity.dart';
import 'package:snack/common/selector_size.dart';
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
              decoration: BoxDecoration(
                color: Color(0xFF2F2B22),
                borderRadius: BorderRadius.circular(10),
              ),
              padding: const EdgeInsets.only(left: 27, top: 100, right: 26),
              child: SingleChildScrollView(
                controller: scrollController,
                child: Column(
                  children: [
                    const SizedBox(height: 500),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [SizeSelector(), QuantitySelector()],
                    ),
                    const SizedBox(height: 32),
                    Container(
                      width: double.infinity,
                      height: 48,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Color(0xFFE970C4), Color(0xFFF69EA3)],
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
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            "Add to order for ${item.price}",
                            style: const TextStyle(
                              color: Colors.white,
                              fontFamily: "Inter",
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),

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
            height: 354,
            borderRadius: BorderRadius.circular(30),
            blur: 60,
            borderWidth: 1,
            borderColor: const Color.fromARGB(24, 255, 255, 255),
            color: const Color.fromARGB(5, 255, 255, 255),
            gradient: null,
            padding: const EdgeInsets.only(
              top: 16,
              right: 30,
              left: 30,
              bottom: 30,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        "assets/icon/heart.png",
                        width: 13,
                        height: 13,
                        color: const Color(0x60ebebf5),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        item.likes,
                        style: const TextStyle(
                          color: Color(0x60ebebf5),
                          fontFamily: "SF Pro Text",
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),

                Text(
                  item.name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    fontFamily: "Inter",
                  ),
                  textAlign: TextAlign.center,
                ),
                const Text(
                  "Lorem ipsum dolor sit amet consectetur. Non feugiat imperdiet a vel sit at amet. Mi accumsan feugiat magna aliquam feugiat ac et. Pulvinar hendrerit id arcu at sed etiam semper mi hendrerit. Id aliquet quis quam.",
                  style: TextStyle(
                    color: Color(0x60ebebf5),
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    fontFamily: "SF Pro Text",
                  ),
                  textAlign: TextAlign.center,
                ),

                const SizedBox(height: 6),

                Padding(
                  padding: const EdgeInsets.only(
                    top: 14,
                    bottom: 14,
                    right: 26,
                    left: 26,
                  ),
                  child: Text(
                    item.price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      fontFamily: "SF Pro Text",
                      letterSpacing: 0.35,
                    ),
                  ),
                ),

                const Divider(color: Color(0x50FFFFFF), thickness: 0.5),
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Ingredients",
                          style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 11,
                            color: Color(0x60EBEBF5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset(
                              "assets/grafiken/Gluten.png",
                              width: 18.65,
                              height: 18.65,
                              color: const Color(0xFFd9d9d9),
                            ),
                            const SizedBox(width: 7.13),
                            Image.asset(
                              "assets/grafiken/Sugar.png",
                              width: 18.65,
                              height: 18.65,
                              color: const Color(0xFFd9d9d9),
                            ),
                            const SizedBox(width: 7.13),
                            Image.asset(
                              "assets/grafiken/LowFat.png",
                              width: 18.65,
                              height: 18.65,
                              color: const Color(0xFFd9d9d9),
                            ),
                            const SizedBox(width: 7.13),
                            Image.asset(
                              "assets/grafiken/Kcal.png",
                              width: 18.65,
                              height: 18.65,
                              color: const Color(0xFFd9d9d9),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Reviews",
                          style: TextStyle(
                            fontFamily: "SF Pro Text",
                            fontSize: 11,
                            color: Color(0x60EBEBF5),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Image.asset(
                              "assets/grafiken/star.png",
                              width: 12.17,
                              height: 12.17,
                              color: Color(0xFFD9D9D9),
                            ),
                            Image.asset(
                              "assets/grafiken/star.png",
                              width: 12.17,
                              height: 12.17,
                              color: Color(0xFFD9D9D9),
                            ),
                            Image.asset(
                              "assets/grafiken/star.png",
                              width: 12.17,
                              height: 12.17,
                              color: Color(0xFFD9D9D9),
                            ),
                            Image.asset(
                              "assets/grafiken/star.png",
                              width: 12.17,
                              height: 12.17,
                              color: Color(0xFFD9D9D9),
                            ),
                            Image.asset(
                              "assets/grafiken/star1.png",
                              width: 12.17,
                              height: 12.17,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 16),
                            const Text(
                              "4.0",
                              style: TextStyle(
                                fontFamily: "SF Pro Text",
                                fontWeight: FontWeight.w800,
                                fontSize: 11,
                                color: Color(0x60EBEBF5),
                              ),
                            ),
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

        Positioned(
          top: 118,
          left: 358,
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              color: Color(0x10FFFFFF),
              shape: BoxShape.circle,
              border: BoxBorder.all(color: Color.fromARGB(41, 255, 255, 255)),
            ),

            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(
                Icons.close,
                color: Color.fromARGB(251, 156, 155, 155),
                size: 20,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ],
    );
  }
}
