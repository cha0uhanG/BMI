import 'package:flutter/material.dart';
import 'package:bmi/main.dart';


  double calculate (double height, double weight)
  {
    double heighttt ;
    double BMI ;
heighttt = (height)/10000 ;
BMI = weight/(height * heighttt) ;
return(BMI) ;
  }

 String weightresult(double BMI) {
   if (BMI < 18.5) {
     return ("Under weight");
   } else if (BMI > 18.5 && BMI < 24.9) {
     return ("Normal weight");
   }
   else if (BMI > 25 && BMI < 29.9) {
     return ("Overweight");
   }
   else {
     return ("Obese");
   }
 }
