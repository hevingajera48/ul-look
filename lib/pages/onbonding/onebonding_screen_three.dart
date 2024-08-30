import 'package:flutter/material.dart';
import 'package:smart_study/Widget/Custom_button.dart';
import 'package:smart_study/Widget/custom_background.dart';
import 'package:smart_study/confing/String_confing.dart';

class OnbondingScreenThree extends StatefulWidget {
  const OnbondingScreenThree({super.key});

  @override
  State<OnbondingScreenThree> createState() => _OnbondingScreenThreeState();
}

class _OnbondingScreenThreeState extends State<OnbondingScreenThree> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomBackGround(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("assets/images/SmartStudy.png"),
            // ignore: prefer_const_constructors
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  Stringconfing.getready,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
