import 'package:flutter/material.dart';
import 'package:snack/common/bottom_sheet.dart';
import 'package:snack/data/item.dart';

class RecommendCardWidget extends StatelessWidget {
  final RecommendItem item;

  const RecommendCardWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          backgroundColor: Colors.transparent,
          builder: (context) => BottomSheetWidget(item: item),
        );
      },
      child: Container(
        width: 190,
        height: 262,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            begin: AlignmentDirectional.bottomCenter,
            end: AlignmentDirectional.topCenter,
            colors: [
              Color(0xFF8c5bea),
              Color.fromARGB(155, 143, 140, 245),
              Color.fromARGB(18, 255, 255, 255),
            ],
          ),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(color: Color(0x50FFFFFF), width: 1),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 17.5,
            right: 17.5,
            bottom: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(item.imagePath, width: 154.04, height: 154.04),
              const SizedBox(height: 6),
              Text(
                item.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontFamily: "SF Pro Text",
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                item.description,
                maxLines: 1,
                style: const TextStyle(
                  color: Color(0x99EBEBF5),
                  fontFamily: "SF Pro Text",
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item.price,
                    style: const TextStyle(
                      color: Colors.white,
                      fontFamily: "SF Pro Text",
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        "assets/icon/heart.png",
                        width: 13,
                        height: 13,
                        color: const Color(0x99EBEBF5),
                      ),
                      const SizedBox(width: 4),
                      Text(
                        item.likes,
                        style: TextStyle(
                          fontFamily: "SF Pro Text",
                          color: Color(0x99EBEBF5),
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
