import 'package:flutter/material.dart';
import 'package:glass_kit/glass_kit.dart';

class CategorySelector extends StatefulWidget {
  final List<String> categories;
  final String initialSelected;

  const CategorySelector({
    super.key,
    required this.categories,
    required this.initialSelected,
  });

  @override
  State<CategorySelector> createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  late String _selectedCategory;

  @override
  void initState() {
    super.initState();
    _selectedCategory = widget.initialSelected;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: buildCategoryButtons()),
    );
  }

  List<Widget> buildCategoryButtons() {
    List<Widget> buttons = [];

    for (var category in widget.categories) {
      final bool isSelected = category == _selectedCategory;
      final double width = category == 'All categories' ? 141 : 85;

      buttons.add(
        Padding(
          padding: const EdgeInsets.only(right: 8),
          child: GestureDetector(
            onTap: () {
              setState(() {
                _selectedCategory = category;
              });
            },
            child: GlassContainer(
              width: width,
              height: 40,
              borderRadius: BorderRadius.circular(30),
              blur: 60,
              alignment: Alignment.center,
              borderWidth: 1,
              borderColor: const Color(0x5DFFFFFF),
              color: isSelected ? const Color(0xFFEDC7EA) : null,
              gradient: isSelected
                  ? null
                  : const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0x03FFFFFF), Color(0x03FFFFFF)],
                    ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (category == 'All categories') ...[
                    Image.asset(
                      "assets/icon/takeoutbag.png",
                      width: 12,
                      height: 12,
                      color: isSelected
                          ? Colors.black
                          : const Color(0x99EBEBF5),
                    ),
                    const SizedBox(width: 4),
                  ],
                  Text(
                    category,
                    style: TextStyle(
                      fontFamily: "SF Pro Text",
                      fontSize: 12,
                      color: isSelected
                          ? Colors.black
                          : const Color(0x99EBEBF5),
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  if (category == 'All categories') ...[
                    const SizedBox(width: 5),
                    Image.asset(
                      "assets/icon/chevron.down.png",
                      width: 12,
                      height: 12,
                      color: isSelected
                          ? Colors.black
                          : const Color(0x99EBEBF5),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      );
    }
    return buttons;
  }
}
