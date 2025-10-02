import 'package:flutter/material.dart';

class SizeSelector extends StatefulWidget {
  const SizeSelector({super.key});

  @override
  State<SizeSelector> createState() => _SizeSelectorSegmentState();
}

class _SizeSelectorSegmentState extends State<SizeSelector> {
  final List<String> sizes = ['Small', 'Medium', 'Large'];
  int selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 30,
      decoration: BoxDecoration(
        color: const Color(0xFF757575),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: List.generate(sizes.length, (index) {
          final bool isSelected = index == selectedIndex;
          return GestureDetector(
            onTap: () => setState(() => selectedIndex = index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected
                    ? const Color(0xFF545454)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                sizes[index],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
