import 'package:flutter/material.dart';

class BackGroundColor extends StatelessWidget {
  const BackGroundColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            const Color(0xff202020).withOpacity(0.7),
            const Color(0xff202020),
          ])),
    );
  }
}
