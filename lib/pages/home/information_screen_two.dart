import 'package:flutter/material.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/app_color.dart';
import 'package:smart_study/constants/app_image.dart';
import 'package:smart_study/constants/font_size.dart';

class InformationScreenTwo extends StatefulWidget {
  const InformationScreenTwo({super.key});

  @override
  State<InformationScreenTwo> createState() => _InformationScreenTwoState();
}

class _InformationScreenTwoState extends State<InformationScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(Stringconfing.MathematicsCourse,
              style: TextStyle(color: AppColor.black2)),
          backgroundColor: AppColor.white),
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child: Image(image: AssetImage(AppImage.rc2), fit: BoxFit.cover),
          width: 500,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(Stringconfing.Upper2,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: fontsize20)),
              SizedBox(
                height: 20,
              ),
              Text(
                Stringconfing.WhatisanAlgorithm,
                style: TextStyle(fontSize: fontsize16),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                Stringconfing.algorithmisasetofcommands,
                style: TextStyle(fontSize: fontsize16),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
