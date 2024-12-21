import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';

class CustomButtomTap extends StatefulWidget {
  final String title;
  bool isClick;
  CustomButtomTap({super.key, required this.title, required this.isClick});

  @override
  State<CustomButtomTap> createState() => _CustomButtomTapState();
}

class _CustomButtomTapState extends State<CustomButtomTap> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
          color: widget.isClick ? AppColor.secColor : Color(0xff202020B2),
          borderRadius: BorderRadius.circular(12)),
      alignment: Alignment.center,
      height: 40,
      child: Text(
        widget.title,
        style: widget.isClick
            ? Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: AppColor.primaryColor, fontSize: 20)
            : Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: 20),
      ),
    );
  }
}
