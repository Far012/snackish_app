import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';
import 'package:snack/common/button_order_now.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              "assets/hintergruende/bg_startscreen.png",
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 100,
            left: -21,
            child: Image.asset(
              "assets/grafiken/cupcake_chick.png",
              width: 549,
              height: 549,
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 120,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Color(0x40000000),
                    offset: Offset(0, 60.58),
                    blurRadius: 121.16,
                  ),
                ],
              ),
              child: Opacity(
                opacity: 0.4,
                child: Image.asset(
                  "assets/details/snack_snack.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: FractionalOffset(0.5, 0.857),
            child: Padding(
              padding: const EdgeInsets.all(25),
              child: GlassContainer(
                height: 208,
                width: double.infinity,
                borderRadius: BorderRadius.circular(30),
                blur: 30,
                padding: const EdgeInsets.all(30),
                alignment: Alignment.center,
                borderWidth: 0.4,
                borderColor: const Color(0x4DFFFFFF),
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Color(0x03FFFFFF), Color(0x03FFFFFF)],
                ),
                child: SizedBox(
                  height: 70,
                  width: 280,
                  child: Column(
                    children: [
                      const Text(
                        "Feeling Snackish Today?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Inter",
                        ),
                      ),
                      const Text(
                        "Explore Angis's most popular snack selection and get instantly happy",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xCCFFFFFF),
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          fontFamily: "SF Pro Text",
                        ),
                      ),
                      const SizedBox(height: 30),
                      const OrderNow(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
