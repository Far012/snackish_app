import 'package:flutter/material.dart';

class QuantitySelector extends StatefulWidget {
  const QuantitySelector({super.key});

  @override
  State<QuantitySelector> createState() => _QuantitySelectorState();
}

class _QuantitySelectorState extends State<QuantitySelector> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: () {
            if (quantity > 1) {
              setState(() => quantity--);
            }
          },
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0x10FFFFFF),
              border: BoxBorder.all(color: Color.fromARGB(41, 255, 255, 255)),
            ),
            child: const Icon(
              Icons.remove,
              color: Color.fromARGB(251, 156, 155, 155),
              size: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        const SizedBox(width: 16),

        Container(
          width: 24,
          alignment: Alignment.center,
          child: Text(
            "$quantity",
            style: const TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.w700,
              fontFamily: "SF Pro Text",
            ),
          ),
        ),

        const SizedBox(width: 16),

        GestureDetector(
          onTap: () => setState(() => quantity++),
          child: Container(
            width: 30,
            height: 30,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: const Color(0x10FFFFFF),
              border: BoxBorder.all(color: Color.fromARGB(41, 255, 255, 255)),
            ),
            child: const Icon(
              Icons.add,
              color: Color.fromARGB(251, 156, 155, 155),
              size: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
