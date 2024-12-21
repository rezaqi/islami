import 'package:flutter/material.dart';
import 'package:islami/core/class/color.dart';
import 'package:islami/core/class/images.dart';
import 'package:islami/widget/timer/timers.dart';

class Bg2 extends StatelessWidget {
  const Bg2({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    double w = MediaQuery.of(context).size.width;

    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          width: w / 2.5,
          height: h / 10,
          decoration: const BoxDecoration(
              color: AppColor.secColor,
              borderRadius: BorderRadius.vertical(top: Radius.circular(30))),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Pray Time",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 114, 94, 58)),
              ),
              Text(
                "Tuesday",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: h / 4,
          decoration: BoxDecoration(
              color: AppColor.secColor,
              borderRadius: BorderRadius.circular(40)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Timers(),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(),
                  const Text(
                    "Next Pray - 02:32",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                  Image.asset(AppImages.volumeCross)
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
