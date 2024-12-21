import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';

class CustomItem extends StatelessWidget {
  final String title;
  final String icon1;
  final String icon2;
  final String background;
  const CustomItem(
      {super.key,
      required this.title,
      required this.icon1,
      required this.icon2,
      required this.background});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    // double w = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
          color: AppColor.secColor, borderRadius: BorderRadius.circular(20)),
      height: h / 5,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w700,
              )),
          Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                background,
                fit: BoxFit.cover,
                height: h / 7,
              ),
              Row(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Image.asset(icon1), Image.asset(icon2)],
              ),
            ],
          )
        ],
      ),
    );
  }
}
