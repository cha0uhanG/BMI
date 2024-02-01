
import 'package:flutter/material.dart';
import 'package:bmi/main.dart';
import "package:bmi/constant.dart";

class Result extends StatefulWidget {
  final double BMI ;
  final String weightr ;
  Result({required this.BMI, required this.weightr}) ;



  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(mainAxisAlignment: MainAxisAlignment.end,

      children: [
        Center(child: Text("BMI is ${widget.BMI.round()}",
          style: TextStyle(fontWeight: FontWeight.w800,fontSize:40 ),)),
        Center(
          child: Text("You Are ${widget.weightr}",
            style: TextStyle(fontWeight: FontWeight.w800,fontSize:40, ), textAlign: TextAlign.center, ),
        ),
        GestureDetector(
          onTap: () {
           Navigator.pop(context);
            print('Button tapped!');
          },
          child: Container(
            color: Color(redcolor),
            padding: EdgeInsets.all(16.0),
            width: double.infinity, // Make the button span the entire width
            child: Center(
              child: Text(
                'Recalculate',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ),);
  }
}



