import 'package:flutter/material.dart';
import 'package:smart_study/Widget/Custom_button.dart';
import 'package:smart_study/Widget/custom_background.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/app_image.dart';

class OnbondingScreenTwo extends StatefulWidget {
  const OnbondingScreenTwo({super.key});

  @override
  State<OnbondingScreenTwo> createState() => _OnbondingScreenTwoState();
}

class _OnbondingScreenTwoState extends State<OnbondingScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: CustomBackGround(
                child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Image.asset(AppImage.smartstudy),
        Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(Stringconfing.ifyou,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center),
          ),
        ),
      ],
    ))));
  }
}
