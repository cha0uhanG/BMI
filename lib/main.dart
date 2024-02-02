import 'package:flutter/material.dart';
import "package:bmi/icon.dart";
import "package:bmi/reusable.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import "package:bmi/constant.dart";
import 'package:bmi/screen.dart';
import 'package:bmi/logic.dart';
import 'package:bmi/First_screen.dart';
import 'package:bmi/SIgnup_Screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi/splash.dart';




void main() => runApp(BBMI(
));

class BBMI extends StatelessWidget {
  const BBMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        title: "BMI",
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
         home: Splash());
  }
}





