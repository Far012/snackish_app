import 'package:flutter/material.dart';

class AddToOrder extends StatelessWidget {
  const AddToOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 93,
      height: 40,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFEA71C5), Color(0xFF908CF5)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(1),
      child: Container(
        decoration: BoxDecoration(
          color: Color(0x0000001A),
          borderRadius: BorderRadius.circular(10),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/leer");
          },
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
    );
  }
}
