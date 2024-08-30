import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/cupertino.dart';

class Custom_Indicator extends StatelessWidget {
  Widget build(BuildContext context) {
    return new DotsIndicator(
      dotsCount: 3,
      position: 0,
      decorator: DotsDecorator(
        color: CupertinoColors.white, // Inactive color
        activeColor: CupertinoColors.black,
      ),
    );
  }
}
