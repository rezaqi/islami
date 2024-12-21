import 'package:flutter/material.dart';
import 'package:islami/widget/timer/custom_time.dart';

class Timers extends StatelessWidget {
  const Timers({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;

    return Row(
      spacing: 8,
      children: [
        CustomTime(
            textSize: 16,
            top: "ASR",
            bottom: "PM",
            h: h / 8,
            w: w / 4,
            center: "04:38"),
        CustomTime(
            textSize: 25,
            top: "ASR",
            bottom: "PM",
            h: h / 7,
            w: w / 4,
            center: "04:38"),
        CustomTime(
            textSize: 32,
            top: "ASR",
            bottom: "PM",
            h: h / 6,
            w: w / 4,
            center: "04:38"),
        CustomTime(
            textSize: 25,
            top: "ASR",
            bottom: "PM",
            h: h / 7,
            w: w / 4,
            center: "04:38"),
        CustomTime(
            textSize: 16,
            top: "ASR",
            bottom: "PM",
            h: h / 8,
            w: w / 4,
            center: "04:38")
      ],
    );
  }
}
