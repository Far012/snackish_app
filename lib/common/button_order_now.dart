import 'package:flutter/material.dart';

class OrderNow extends StatelessWidget {
  const OrderNow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
