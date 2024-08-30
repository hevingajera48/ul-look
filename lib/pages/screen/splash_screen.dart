import 'package:flutter/material.dart';
import 'package:smart_study/Widget/onbonding_pageview.dart';
import 'package:smart_study/constants/export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(
      const Duration(milliseconds: 3000),
      () => Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnbondingPageView(),
          ),
          (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("World");
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: AppColor.linearGradient1,
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            AppImage.spalsh,
            fit: BoxFit.cover,
          ),
        ]),
      ),
    );
  }
}
