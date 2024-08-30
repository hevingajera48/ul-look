import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:smart_study/Service/firebase_service.dart';
import 'package:smart_study/Widget/Custom_button.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/app_color.dart';
import 'package:smart_study/constants/export.dart';
import 'package:smart_study/constants/font_size.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(gradient: AppColor.linearGradient1),
        child: Padding(
          padding: const EdgeInsets.only(top: 50),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  AppImage.logosign,
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  AppImage.smartstudy,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          Stringconfing.hiwelcome,
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: fontsize22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(Stringconfing.intoday,
                            textAlign: TextAlign.start,
                            style: TextStyle(fontSize: fontsize18)),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 5,
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: CustomButton(
                    txt: "Sign in",
                    color: AppColor.white,
                    radius: 22,
                    colorText: AppColor.black2,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  elevation: 5,
                  shape: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: CustomButton(

                    txt: " Create an account",
                    color: AppColor.blue,
                    radius: 30,
                    colorText: AppColor.black2,
                  ),
                ),
                Image.asset(AppImage.book, fit: BoxFit.cover),
                Image.asset(AppImage.school)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
