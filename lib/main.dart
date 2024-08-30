import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/material.dart';
import 'package:smart_study/pages/authentication/auth_screen.dart';
import 'package:smart_study/pages/authentication/auth_screen_two.dart';
import 'package:smart_study/pages/home/information_screen_two.dart';

void main() async {
  try {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp();
  } catch (e) {
    print("====><=====$e");
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: AuthScreenTwo(),
    );
  }
}
