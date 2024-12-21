import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';

class Background1 extends StatelessWidget {
  const Background1({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Container(
      alignment: Alignment.topCenter,
      width: double.infinity,
      height: h / 3,
      decoration: BoxDecoration(
          color: AppColor.brown, borderRadius: BorderRadius.circular(40)),
    );
  }
}
