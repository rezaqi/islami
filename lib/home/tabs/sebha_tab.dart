import 'package:flutter/material.dart';
import 'package:islami/widget/sebha/circle.dart';
import 'package:islami/widget/sebha/text-page.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int count = 0;
  double i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          count++;
          i += 0.19;
          setState(() {});
        },
        child: Column(
          children: [
            TextPage(),
            SizedBox(
              height: 95,
            ),
            CirclePage(
              i: i,
              count: count,
            )
          ],
        ),
      ),
    );
  }
}
