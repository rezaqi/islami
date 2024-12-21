import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';

class TextPage extends StatelessWidget {
  const TextPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Text(
      "سَبِّحِ اسْمَ رَبِّكَ الأعلى",
      style: const TextStyle(
          color: AppColor.white, fontSize: 36, fontWeight: FontWeight.w700),
    ));
  }
}
