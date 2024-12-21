import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';
import 'package:islami/core/class/images.dart';

class CirclePage extends StatefulWidget {
  final int count;
  final double i;
  const CirclePage({super.key, required this.count, required this.i});

  @override
  State<CirclePage> createState() => _CirclePageState();
}

class _CirclePageState extends State<CirclePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Transform.rotate(
          angle: widget.i,
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    AppImages.topCircle,
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                  )),
              Image.asset(
                AppImages.circle,
                height: 310,
                width: 400,
              )
            ],
          ),
        ),
        Column(
          children: [
            Text(
              widget.count <= 30 ? "سبحان الله" : "الله اكبر",
              style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: AppColor.white),
            ),
            Text(
              "${widget.count}",
              style: const TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.w700,
                  color: AppColor.white),
            )
          ],
        )
      ],
    );
  }
}
