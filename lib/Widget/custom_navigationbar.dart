import 'package:flutter/material.dart';
import 'package:smart_study/constants/app_color.dart';
import 'package:smart_study/constants/app_image.dart';
import 'package:smart_study/pages/home/home_screen_one.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  final List<Widget> _buildScreens = [
    const HomeScreenOne(),
    Scaffold(),
    Scaffold()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildScreens[0],
      bottomNavigationBar: Stack(
        children: [
          Container(
            color: AppColor.transparent,
            height: 50,
            margin: const EdgeInsets.only(top: 20),
          ),
          Transform.translate(
              offset: Offset(20, 30),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Column(
                  children: [
                    ImageIcon(AssetImage(AppImage.home),
                        color: AppColor.blue),
                    Text(
                      "Home",
                      style: TextStyle(fontSize: 9, color: AppColor.sky),
                    )
                  ],
                ),
              )),
          Transform.translate(
              offset: const Offset(90, 30),
              child: Container(
                height: 40,
                width: 51,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Column(
                  children: [
                    ImageIcon(AssetImage(AppImage.Search),
                        color: AppColor.blue),
                    // Image(image: AssetImage(AppImage.deal),fit: BoxFit.cover),
                    Text(
                      "All Offers",
                      style: TextStyle(fontSize: 9, color: AppColor.sky),
                    )
                  ],
                ),
              )),
          Transform.translate(
              offset:  Offset(290, 30),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Column(
                  children: [
                    ImageIcon(AssetImage(AppImage.folder),
                        color: AppColor.blue),
                    Text(
                      "Map",
                      style: TextStyle(fontSize: 9, color: AppColor.sky),
                    )
                  ],
                ),
              )),
          Transform.translate(
              offset:  Offset(380, 30),
              child: Container(
                height: 40,
                width: 56,
                child: Column(
                  children: [
                    ImageIcon(AssetImage(AppImage.profile), color: AppColor.sky),
                    // Image(image: AssetImage(AppImage.deal),fit: BoxFit.cover),
                    Text(
                      "Notification",
                      style: TextStyle(fontSize: 9, color: AppColor.blue),
                    )
                  ],
                ),
              )),
          Positioned(
            left: MediaQuery.of(context).size.width / 2.5,
            // top: -10,
            child: Transform.translate(
              offset: const Offset(8, -8),
              child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Container(
                    height: 70,
                    width: 50,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: AppColor.linearGradient1),
                    child: ImageIcon(AssetImage(AppImage.home),
                        color: AppColor.black2),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
