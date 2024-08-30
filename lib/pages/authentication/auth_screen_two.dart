import 'package:flutter/material.dart';
import 'package:smart_study/Service/firebase_service.dart';
import 'package:smart_study/Widget/Custom_button.dart';
import 'package:smart_study/Widget/custom_textfromfield.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/export.dart';
import 'package:smart_study/constants/font_size.dart';

class AuthScreenTwo extends StatefulWidget {
  const AuthScreenTwo({super.key});

  @override
  State<AuthScreenTwo> createState() => _AuthScreenTwoState();
}

class _AuthScreenTwoState extends State<AuthScreenTwo> {
  TextEditingController email = TextEditingController();
  TextEditingController Password = TextEditingController();
  FirebaseServices firebaseServices =  FirebaseServices();
  bool? isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: CustomBackGround(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Stringconfing.Signin,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: fontsize30,
                    color: AppColor.white),
              ),
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        width: 460,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60)),
                          color: AppColor.white,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12.0, vertical: 30),
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  Stringconfing.welcomeback,
                                  style: TextStyle(
                                      fontSize: fontsize20,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  Stringconfing.thisispage,
                                  style: TextStyle(fontSize: fontsize16),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                                Text(
                                  Stringconfing.Email,
                                  style: TextStyle(fontSize: fontsize20),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomTextFromFiled(
                                  keyboardType: TextInputType.text,
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                Text(Stringconfing.password,
                                    style: TextStyle(fontSize: fontsize20)),
                                SizedBox(
                                  height: 10,
                                ),
                                CustomTextFromFiled(
                                  keyboardType: TextInputType.text,
                                  isPassword: true,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: [
                                        Checkbox(
                                          value: isChecked,
                                          onChanged: (bool? value) {
                                            setState(() {
                                              isChecked = value;
                                            });
                                          },
                                        ),
                                        Text(
                                          Stringconfing.Remeberme,
                                          style: const TextStyle(
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      Stringconfing.Forgetpassword,
                                      style: const TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColor.blue),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: CustomButton(
                                    onTap: () {
                                      firebaseServices.createEmailOrPassword(email.text, Password.text);
                                    },
                                    txt: Stringconfing.Signin,
                                    color: AppColor.blue,
                                    radius: 20,
                                    colorText: AppColor.white,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        Stringconfing.donthaver,
                                        style: TextStyle(fontSize: fontsize16),
                                      )),
                                )
                              ]),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          Stringconfing.orsignin,
                          style: TextStyle(fontSize: fontsize24),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: AppColor.blue,
                              image: DecorationImage(
                                  image: AssetImage(AppImage.google),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: AppColor.blue,
                              image: DecorationImage(
                                  image: AssetImage(AppImage.facebook),
                                  fit: BoxFit.cover)),
                        ),
                        Container(
                          width: 70,
                          height: 70,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              color: AppColor.blue,
                              image: DecorationImage(
                                  image: AssetImage(AppImage.tiktok),
                                  fit: BoxFit.cover)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ))
          ],
        )),
      ),
    );
  }
}
