import 'package:flutter/material.dart';
import 'package:islami/core/class/images.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;
    return Stack(
      alignment: Alignment.center,
      children: [
        Image.asset(
          AppImages.islami,
          fit: BoxFit.cover,
          height: h / 4,
          width: w / 1.4,
        ),
      ],
    );
  }
}
