import 'package:flutter/material.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/app_color.dart';
import 'package:smart_study/constants/app_image.dart';

class OnbondingScreenOne extends StatefulWidget {
  const OnbondingScreenOne({super.key});

  @override
  State<OnbondingScreenOne> createState() => _OnbondingScreenOneState();
}

class _OnbondingScreenOneState extends State<OnbondingScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Image.asset(AppImage.smartstudy),
        ),
        Text(
          Stringconfing.Welcome,textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,

    ),
        )
      ],
    );
  }
}
