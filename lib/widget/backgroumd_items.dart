import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';
import 'package:islami/core/class/images.dart';
import 'package:islami/widget/timer/background/background1.dart';
import 'package:islami/widget/timer/background/bg2.dart';

class BackgroundWithItems extends StatelessWidget {
  const BackgroundWithItems({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const Background1(),
        const Bg2(),
        Positioned(
            left: w / 14,
            top: h / 300,
            child:
                Image.asset(AppImages.left, height: h / 10, fit: BoxFit.cover)),
        Positioned(
            right: w / 14,
            top: h / 300,
            child: Image.asset(AppImages.right,
                height: h / 10, fit: BoxFit.cover)),
        Positioned(
            top: 10,
            left: w / 25,
            child: const Text(
              "16 Jul, \n 2024",
              style: TextStyle(
                  color: AppColor.secColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
        Positioned(
            top: 10,
            right: w / 25,
            child: const Text(
              "09 Muh,\n 1446",
              style: TextStyle(
                  color: AppColor.secColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            )),
      ],
    );
  }
}
