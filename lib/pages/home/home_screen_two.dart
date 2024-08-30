import 'package:flutter/material.dart';
import 'package:smart_study/confing/String_confing.dart';
import 'package:smart_study/constants/export.dart';
import 'package:smart_study/constants/font_size.dart';

class HomeScreenTwo extends StatefulWidget {
  const HomeScreenTwo({super.key});

  @override
  State<HomeScreenTwo> createState() => _HomeScreenTwoState();
}

class _HomeScreenTwoState extends State<HomeScreenTwo> {
  List imgdata = [
    {'img': AssetImage(AppImage.ylog), 'title': Stringconfing.upper},
    {'img': AssetImage(AppImage.rectengle), 'title': Stringconfing.simple},
  ];

  List searchList = [
    'Mathematics',
    'Algorithm',
    'Electrical',
    'Revolution',
    'Science',
    'Social',
    'humanism'
  ];
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
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
          padding: const EdgeInsets.all(8.0),
          child: Text(
            Stringconfing.whatuhave,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontsize24),
          ),
        ),
        Wrap(
          children: List.generate(searchList.length, (index) {
            return TextButton(
                onPressed: () {
                  setState(() {});
                },
                child: Container(
                  width: 92,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.blue),
                  child: Center(
                    child: (Text(
                      searchList[index],
                      style: const TextStyle(
                          fontSize: fontsize16,
                          fontWeight: FontWeight.bold,
                          color: AppColor.white),
                    )),
                  ),
                ));
          }),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(Stringconfing.Recomended1,
              style:
                  TextStyle(fontSize: fontsize24, fontWeight: FontWeight.bold)),
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
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(Stringconfing.fevrorite,
              style:
                  TextStyle(fontSize: fontsize24, fontWeight: FontWeight.bold)),
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
        // CustomNavigationBar()
      ]),
    );
  }
}
