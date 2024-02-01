import 'package:flutter/material.dart';

class reusable extends StatelessWidget {
  reusable({required this.cc,required this.childwidget});
  final Color cc ;
  final Widget childwidget ;



  @override
  Widget build(BuildContext context) {
    return Container(
      child: childwidget,
      margin:EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: cc,
        borderRadius: BorderRadius.circular(10.0),  // Border radius
        border: Border.all(// Border color
          width: 1.0,                  // Border width
        ),
      ),

    );
  }
}
