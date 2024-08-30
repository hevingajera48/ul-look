import 'package:flutter/material.dart';
import 'package:smart_study/Widget/Custom_button.dart';
import 'package:smart_study/Widget/custom_textfromfield.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/export.dart';
import 'package:smart_study/constants/font_size.dart';

class AuthScreenthree extends StatefulWidget {
  const AuthScreenthree({super.key});

  @override
  State<AuthScreenthree> createState() => _AuthScreenthreeState();
}

class _AuthScreenthreeState extends State<AuthScreenthree> {
  TextEditingController email = TextEditingController();
  GlobalKey<FormState> FormKey = GlobalKey<FormState>();
  // bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Form(
      key: FormKey,
      child: CustomBackGround(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(Stringconfing.Signin,
                      style: TextStyle(
                          color: AppColor.white,
                          fontSize: fontsize30,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
            Container(
              height: 700,
              width: 450,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(60),
                  color: AppColor.white),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 20),
                child: ListView(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(Stringconfing.welcomeback,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fontsize20)),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      Stringconfing.thisispage,
                      style: TextStyle(fontSize: fontsize16),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(Stringconfing.Email,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fontsize14)),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextFromFiled(
                      keyboardType: TextInputType.text,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(Stringconfing.phoneno,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fontsize14)),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextFromFiled(
                      keyboardType: TextInputType.phone,
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Text(Stringconfing.createPassword,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fontsize14)),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextFromFiled(isPassword: true),
                    SizedBox(
                      height: 25,
                    ),
                    Text(Stringconfing.ConfirmPassword,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: fontsize14)),
                    SizedBox(
                      height: 15,
                    ),
                    CustomTextFromFiled(isPassword: true),

                    SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomButton(
                              color: AppColor.blue,
                              txt: Stringconfing.Signin,
                              colorText: AppColor.white,
                              radius: 20),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(Stringconfing.iam),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    )));
  }
}
