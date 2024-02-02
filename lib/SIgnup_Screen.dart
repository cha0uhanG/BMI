import 'dart:ffi';
import "package:bmi/First_screen.dart";
import 'package:bmi/main.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:bmi/splash.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  var userid ;
  var pswrd ;
  var visible="" ;
  @override
  void initState() {
     givedata();
    super.initState();
  }

  Future  givedata() async{
    var prefer = await SharedPreferences.getInstance();
    var val = prefer.setBool("userid", true);

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(onChanged:(value){userid=value;},
            decoration: InputDecoration(labelText: 'User ID'),),
          TextField(onChanged:(value){pswrd=value;},
          readOnly:false ,
            obscureText: true,
            decoration: InputDecoration(labelText: 'Password'),),
          Center(child:
          ElevatedButton(onPressed:()async{
           var prefer = await SharedPreferences.getInstance();
           prefer.setBool(SplashState.keyvalue, true);
           Navigator.of(context).pushReplacement(
               MaterialPageRoute(builder: (context) => BMI()));
            },
            child: Text("Signup"),style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
          ),),),SizedBox(height:15),
          Text("JAI_ho")
        ],
      ),);
  }


  }



