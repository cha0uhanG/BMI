import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import "package:bmi/First_screen.dart";
import 'package:bmi/SIgnup_Screen.dart';



class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => SplashState();
}

class SplashState extends State<Splash> {

  static const String keyvalue = "Login" ;

  @override
  void initState() {
    getdata();
    super.initState();
  }

  Future getdata() async {
    var prefer = await SharedPreferences.getInstance();
    var isloggedin = prefer.getBool(keyvalue);

Timer(Duration(seconds:2),(){
    if (isloggedin !=null) {
      if (isloggedin) {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => BMI()));
      } else {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => Signup()));
      }
    }else{Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => Signup()));}


  });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Color(0xFF111328) ,body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircularProgressIndicator(),
        Center(child: Text("Loading",style: TextStyle(fontSize: 40,fontWeight:FontWeight.w900),))
      ],
    )
    );
  }
}
