import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

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
                opacity: 0.3,
                child: Image.asset(
                  "assets/details/snack_snack.png",
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 552,
            left: 25,
            child: GlassContainer(
              height: 208,
              width: 340,
              borderRadius: BorderRadius.circular(30),
              blur: 30,
              padding: const EdgeInsets.all(30),
              alignment: Alignment.center,
              borderWidth: 0.2,
              borderColor: Color(0x4DFFFFFF),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0x03FFFFFF), Color(0x03FFFFFF)],
              ),
              child: SizedBox(
                height: 70,
                width: 280,
                child: Column(
                  children: [
                    Text(
                      "Feeling Snackish Today?",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w900,
                        fontFamily: "Inter",
                      ),
                    ),
                    Text(
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
                    Container(
                      width: 202,
                      height: 48,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xFFE970C4), Color(0xFFF69EA3)],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x80EA71C5),
                            offset: Offset(0, 10),
                            blurRadius: 30,
                          ),
                        ],
                      ),
                      padding: EdgeInsets.all(1.5),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "/home");
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              "Order Now",
                              style: TextStyle(
                                color: Colors.white,
                                fontFamily: "Inter",
                                fontSize: 17,
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
          ),
        ],
      ),
    );
  }
}
