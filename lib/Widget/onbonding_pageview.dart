import 'package:flutter/material.dart';
import 'package:smart_study/constants/export.dart';

class OnbondingPageView extends StatefulWidget {
  const OnbondingPageView({super.key});

  @override
  State<OnbondingPageView> createState() => _OnbondingPageViewState();
}

class _OnbondingPageViewState extends State<OnbondingPageView> {
  int activePage = 0;

  List<Widget> screen = [
    const OnbondingScreenOne(),
    const OnbondingScreenTwo(),
    const OnbondingScreenThree(),
  ];
  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    return Scaffold(
      body: CustomBackGround(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            screen[activePage],
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 300,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List<Widget>.generate(
                    screen.length,
                    (index) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: InkWell(
                            onTap: () {
                              controller.animateToPage(index,
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.easeIn);
                            },
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration: BoxDecoration(
                                  color: activePage == index
                                      ? Colors.white
                                      : Colors.white,
                                  border: Border.all(
                                      color: activePage == index
                                          ? Colors.black
                                          : Colors.transparent,
                                      width: 2),
                                  shape: BoxShape.circle),
                            ),
                          ),
                        )),
              ),
            ),
            Positioned(
                bottom: 75,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      if (activePage <= 1) {
                        activePage++;
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OnbondingScreenThree(),
                            ));
                      }
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 100,
                    color: Colors.blue,
                    child: Center(
                        child: Text("Next",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold))),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
