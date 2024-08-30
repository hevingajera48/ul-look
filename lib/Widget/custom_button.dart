import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smart_study/constants/font_size.dart';

class CustomButton extends StatelessWidget {
  Color? color;
  Color? colorText;
  Function()? onTap;
  double? radius;
  String? txt;

  CustomButton({super.key, this.color,  this.onTap, this.txt,this.radius,this.colorText});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onTap,
        child: Container(
          height: 40,
           width: 100,
          decoration: BoxDecoration(
              color: color, borderRadius: BorderRadius.circular(radius??0.0)),
          child: Center(child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0,horizontal: 20),
            child: Text(txt??"",style: TextStyle(color: colorText,fontSize: fontsize16),),
          )),
        ),
    );
  }
}
