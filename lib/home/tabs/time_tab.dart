import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';
import 'package:islami/widget/backgroumd_items.dart';

class TimeTab extends StatelessWidget {
  const TimeTab({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const BackgroundWithItems(),
        Expanded(
          child: GridView.builder(
            itemCount: 4,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisExtent: h / 3.5,
                mainAxisSpacing: 20),
            itemBuilder: (context, index) => Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 2, color: AppColor.brown)),
              child: Column(
                children: [
                  Image.asset('assets/images/icon${index + 1}.png'),
                  Text(
                    title[index],
                    style: const TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: AppColor.white),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}

List<String> title = [
  "Morning Azkar",
  "Waking Azkar",
  "Evening Azkar",
  "Sleeping Azkar",
];
