import 'package:flutter/material.dart';
import 'package:smart_study/constants/app_color.dart';
import 'package:smart_study/constants/app_image.dart';

class CustomBackGround extends StatelessWidget {
  Widget child;
  CustomBackGround({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(gradient: AppColor.linearGradient1,
        image: DecorationImage(
          image: AssetImage(AppImage.onbonding),fit: BoxFit.fitWidth
        ),
      ),
      child: child,
    );
  }
}
