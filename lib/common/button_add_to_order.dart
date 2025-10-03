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
    );
  }
}
