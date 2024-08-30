import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smart_study/Widget/custom_navigationbar.dart';

import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/export.dart';
import 'package:smart_study/constants/font_size.dart';

class HomeScreenOne extends StatefulWidget {
  const HomeScreenOne({super.key});

  @override
  State<HomeScreenOne> createState() => _HomeScreenOneState();
}

class _HomeScreenOneState extends State<HomeScreenOne> {
  List data = [
    {'img': AssetImage(AppImage.Scince), 'title': "Science"},
    {'img': AssetImage(AppImage.Mathematics), 'title': "Mathematics"},
    {'img': AssetImage(AppImage.History), 'title': "History"},
    {'img': AssetImage(AppImage.English), 'title': "English"},
    {'img': AssetImage(AppImage.Physics), 'title': "physics"}
  ];
  List imgdata = [
    {'img': AssetImage(AppImage.ylog), 'title': Stringconfing.upper},
    {'img': AssetImage(AppImage.rectengle), 'title': Stringconfing.simple},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CustomNavigationBar(),
        appBar: AppBar(
          backgroundColor: AppColor.white,
          elevation: 0,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                CupertinoIcons.profile_circled,
                color: AppColor.black2,
                size: 50,
              ),
            )
            // Container(
            //   height: 50,
            //   width: 50,
            //   decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(90),
            //       color: AppColor.white,
            //       image: DecorationImage(
            //           image: AssetImage(AppImage.profile), fit: BoxFit.cover)),
            // )
          ],
          title: Text(Stringconfing.hifarkhan,
              style: TextStyle(color: AppColor.black2)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 8, right: 8, bottom: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Card(
                shadowColor: AppColor.black2,
                elevation: 7,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40)),
                child: Container(
                    width: double.infinity,
                    height: 250,
                    decoration: BoxDecoration(
                        gradient: AppColor.linearGradientsky,
                        borderRadius: BorderRadius.circular(40)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 40, left: 20),
                                child: Container(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        Stringconfing.Start,
                                        style: TextStyle(
                                            fontSize: fontsize34,
                                            color: AppColor.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text(
                                        Stringconfing.leaning,
                                        style: TextStyle(
                                            fontSize: fontsize36,
                                            color: AppColor.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                child: Image(
                                  image: AssetImage(
                                    AppImage.study,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: SearchBar(
                              hintText: "Search here..",
                              leading: Icon(Icons.search),
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              SizedBox(height: 10),
              Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    Stringconfing.Categories,
                    style: TextStyle(
                        fontWeight: FontWeight.bold, fontSize: fontsize24),
                  )),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  itemCount: data.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 85,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.blue),
                          image: DecorationImage(
                            image: data[index]['img'],
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(data[index]['title']),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(Stringconfing.Recomended1,
                    style: TextStyle(
                        fontSize: fontsize24, fontWeight: FontWeight.bold)),
              ),
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
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(color: AppColor.blue),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                                child: Card(
                                  elevation: 5,
                                  child: Image(
                                    image: imgdata[index]['img'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                width: 180,
                                height: 100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: Colors.transparent)),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(imgdata[index]['title'],
                                  style: TextStyle(
                                      fontSize: fontsize16,
                                      color: AppColor.white,
                                      fontWeight: FontWeight.bold)),
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
        ));
  }
}
