import 'package:flutter/material.dart';

class CustomTextFromFiled extends StatelessWidget {
  TextEditingController? controller;
  bool? isPassword = false;
  final formkey = GlobalKey<FormState>();
  TextInputType? keyboardType;

  String? Function(String?)? validator;
  CustomTextFromFiled({super.key, this.controller, this.keyboardType,this.isPassword});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: keyboardType,
      textInputAction: TextInputAction.next,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "please enter your name";
        }
        return null;
      },
      decoration: InputDecoration(
          hintText: "", border: const OutlineInputBorder(),suffixIcon: (isPassword??false) ?  Icon(Icons.visibility):null),
    );
  }
}
