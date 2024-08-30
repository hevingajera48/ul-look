import 'package:flutter/material.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/app_color.dart';
import 'package:smart_study/constants/app_image.dart';
import 'package:smart_study/constants/font_size.dart';

class HomeFevScreen extends StatefulWidget {
  const HomeFevScreen({super.key});

  @override
  State<HomeFevScreen> createState() => _HomeFevScreenState();
}

class _HomeFevScreenState extends State<HomeFevScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Icon(
            Icons.arrow_back,
            color: AppColor.black2,
          ),
          title: Text(
            "Searching",
            style: TextStyle(
              color: AppColor.black2,
            ),
          )),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: TextFormField(
            decoration: InputDecoration(
                hintText: "Search here...",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                prefixIcon: Icon(Icons.search)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Card(
            elevation: 5,
            child: Container(
              width: 400,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage(AppImage.ylog2),
                        fit: BoxFit.cover,
                        height: 100,
                      ),
                      height: 100,
                      width: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            Stringconfing.upper,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize16),
                          ),
                        ),
                        Text(Stringconfing.anelectrical)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(image: AssetImage(AppImage.Vector)),
                          Row(
                            children: [
                              Image(image: AssetImage(AppImage.watch)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "7 hour ago",
                                style: TextStyle(
                                    fontSize: 14, color: AppColor.black2),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Card(
            elevation: 5,
            child: Container(
              width: 400,
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: AppColor.white,
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      child: Image(
                        image: AssetImage(AppImage.Rectangle2),
                        fit: BoxFit.cover,
                        height: 100,
                      ),
                      height: 100,
                      width: 100,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            Stringconfing.simple,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: fontsize16),
                          ),
                        ),
                        Text(Stringconfing.anelectrical)
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image(image: AssetImage(AppImage.Vector)),
                          Row(
                            children: [
                              Image(image: AssetImage(AppImage.watch)),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "7 hour ago",
                                style: TextStyle(
                                    fontSize: 14, color: AppColor.black2),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ]),
            ),
          ),
        )
      ]),
    );
  }
}
