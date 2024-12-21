import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';

class CustomTime extends StatelessWidget {
  final String top;
  final String bottom;

  final String center;
  final double h;

  final double w;
  final double textSize;
  const CustomTime(
      {super.key,
      required this.top,
      required this.bottom,
      required this.h,
      required this.w,
      required this.center,
      required this.textSize});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: h,
      width: w,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              colors: [Color(0xff202020), Color(0xffB19768)])),
      child: Column(
        spacing: 5,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            top,
            style: const TextStyle(
                color: AppColor.white,
                fontSize: 16,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          Text(
            center,
            style: TextStyle(
                color: AppColor.white,
                fontSize: textSize,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          ),
          Text(
            bottom,
            style: TextStyle(
                color: AppColor.white,
                fontSize: 16,
                fontWeight: FontWeight.w700),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
