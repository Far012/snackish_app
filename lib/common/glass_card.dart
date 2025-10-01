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
          alignment: Alignment.center,
          child: SizedBox(
            width: 310,
            height: 84,
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20),
              child: const Text(
                "Angi's Yummy Burger",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
