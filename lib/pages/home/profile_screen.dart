import 'package:flutter/material.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/export.dart';
import 'package:smart_study/constants/font_size.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List txtdata = [
    {'txt': "hello"},
    {'txt': "hie"},
  ];
  List imgdata = [
    {'img': AssetImage(AppImage.ylog), 'title': Stringconfing.upper},
    {'img': AssetImage(AppImage.rectengle), 'title': Stringconfing.simple},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: CustomBackGround(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Stack(children: [
              Column(
                children: [
                  Container(
                    height: 660,
                    width: 430,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(60)),
                        border: Border.all(color: AppColor.black2),
                        color: AppColor.white),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 20),
                            child: Column(
                              children: [
                                Text(Stringconfing.muhammadfarkhan,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: fontsize22)),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(Stringconfing.Jakarta),
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Column(
                                children: [
                                  Text(Stringconfing.twoplus,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: fontsize20)),
                                  Text(Stringconfing.fevrorite,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: fontsize20)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(Stringconfing.Tenplus,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: fontsize20)),
                                  Text(Stringconfing.Course,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: fontsize20)),
                                ],
                              ),
                              Column(
                                children: [
                                  Text(Stringconfing.Twntyplus,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: fontsize20)),
                                  Text(Stringconfing.Read,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: fontsize20)),
                                ],
                              ),
                              Container(
                                width: 100,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: AppColor.sky,
                                    border: Border.all(
                                        color: AppColor.blue,
                                        style: BorderStyle.solid)),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      Icon(Icons.remove_red_eye_rounded),
                                      Align(
                                          alignment: Alignment.center,
                                          child: Text(Stringconfing.Best))
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(Stringconfing.Bio,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize24)),SizedBox(height: 20,),
                              Text(Stringconfing.saya,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize12)),
                              SizedBox(
                                height: 20,
                              ),
                              Text(Stringconfing.FavoriteCourses,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: fontsize24)),
                              SizedBox(
                                height: 200,
                                child: ListView.builder(
                                  itemCount: imgdata.length,
                                  scrollDirection: Axis.horizontal,
                                  itemBuilder: (context, index) {
                                    return Padding(
                                      padding: const EdgeInsets.all(18.0),
                                      child: Container(
                                        width: 200,
                                        decoration: BoxDecoration(
                                          gradient: AppColor.linearGradientsky,
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          border:
                                              Border.all(color: AppColor.blue),
                                        ),
                                        child: Column(children: [
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Container(
                                                child: Card(
                                                  elevation: 5,
                                                  child: Image(
                                                    image: imgdata[index]
                                                        ['img'],
                                                    fit: BoxFit.cover,
                                                  ),
                                                ),
                                                width: 180,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                    color: Colors.transparent)),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(imgdata[index]['title'],
                                                  style: TextStyle(
                                                      fontSize: fontsize16,
                                                      color: AppColor.white,
                                                      fontWeight:
                                                          FontWeight.bold)),
                                            ],
                                          )
                                        ]),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Transform.translate(
                  offset: Offset(25, -50),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            color: AppColor.sky,
                            image: DecorationImage(
                                image: AssetImage(AppImage.profile))),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 30, right: 60),
                        child: Row(
                          children: [
                            Icon(Icons.edit),
                            Text(
                              Stringconfing.EditProfile,
                              style: TextStyle(
                                  fontSize: fontsize16,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  )),
            ]),
          )
        ]),
      ),
    ));
  }
}
