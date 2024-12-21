import 'package:flutter/material.dart';
import 'package:islami/widget/radio/button_tap.dart';

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  State<Buttons> createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                i = 0;
              });
            },
            child: CustomButtomTap(
              isClick: i == 0 ? true : false,
              title: "Radio",
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                i = 1;
              });
            },
            child: CustomButtomTap(
              isClick: i == 0 ? false : true,
              title: "Reciters",
            ),
          ),
        )
      ],
    );
  }
}
