import 'package:flutter/material.dart';
import 'package:islami/core/class/images.dart';
import 'package:islami/widget/radio/buttons.dart';
import 'package:islami/widget/radio/item.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    // double w = MediaQuery.of(context).size.width;
    return const SingleChildScrollView(
      child: Column(
        spacing: 8,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Buttons(),
          SizedBox(
            height: 2,
          ),
          CustomItem(
            background: AppImages.mosque,
            title: 'Ibrahim Al-Akdar',
            icon1: AppImages.polygon,
            icon2: AppImages.volumeHigh,
          ),
          CustomItem(
            background: AppImages.soundWave,
            title: 'Akram Alalaqmi',
            icon1: AppImages.pause,
            icon2: AppImages.volumeCross,
          ),
          CustomItem(
            background: AppImages.mosque,
            title: 'Majed Al-Enezi',
            icon1: AppImages.polygon,
            icon2: AppImages.volumeHigh,
          ),
          CustomItem(
            background: AppImages.mosque,
            title: 'Malik shaibat Alhamed',
            icon1: AppImages.polygon,
            icon2: AppImages.volumeHigh,
          )
        ],
      ),
    );
  }
}
