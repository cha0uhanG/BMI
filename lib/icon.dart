import 'package:flutter/material.dart';


class Icondetail extends StatelessWidget {
  final String name;

  final IconData iicon;

  Icondetail({required this.name, required this.iicon });
  @override

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,children: [
      Icon(iicon,size:60 ,),
      Text(name,style: TextStyle(fontSize:20 ),)
    ],);
  }
}