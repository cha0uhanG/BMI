import 'package:flutter/material.dart';
import "package:bmi/icon.dart";
import "package:bmi/reusable.dart";
import "package:bmi/constant.dart";
import 'package:bmi/screen.dart';
import 'package:bmi/logic.dart';
import 'package:shared_preferences/shared_preferences.dart';




class BMI extends StatefulWidget {
  const BMI({super.key});

  @override
  State<BMI> createState() => _BMIState();
}

class _BMIState extends State<BMI> {

  void increase(){
    setState(() {
      ++weight;
    });
  }

  void decrease(){
    setState(() {
      --weight;
    });
  }
  void increase_age(){
    setState(() {
      ++age;
    });
  }

  void decrease_age(){
    setState(() {
      --age;
    });
  }
  @override
  void initState() {

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(child: Row(children: [
                  Expanded(child: GestureDetector(onTap:(){
                    setState(() {
                      if(malecolor==inactivecolor){malecolor=activecolor ; femalecolor =inactivecolor; }
                      else{malecolor=inactivecolor;}
                    });} ,
                    child: reusable(cc:Color(malecolor),
                        childwidget:Icondetail(name:"Male",iicon:Icons.male,)),
                  ),
                  ),
                  Expanded(child: GestureDetector(onTap: (){setState(() {
                    if(femalecolor==inactivecolor){femalecolor=activecolor ;malecolor =inactivecolor; }
                    else{femalecolor=inactivecolor;}

                  }
                  );},
                    child: reusable(cc:Color(femalecolor),
                      childwidget:Icondetail(name:"Female",iicon:Icons.female,),
                    ),
                  ),)]
                  ,),
                ),
                Expanded(child: reusable(cc:Color(inactivecolor),childwidget: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(heightt.toString(),style:TextStyle(fontSize:40 ) ),
                    SliderTheme(data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15.0),
                      activeTrackColor: Colors.cyan, // Modify the active track color
                      inactiveTrackColor: Colors.grey, // Modify the inactive track color
                      thumbColor: Colors.red, // Modify the thumb color
                      overlayColor: Colors.red.withOpacity(1), // Modify the overlay color
                      // Add more modifications as needed
                    ),
                      child: Slider(
                        activeColor: Color(redcolor),
                        value: heightt.toDouble(),
                        min: 0.0,
                        max: 300.0,
                        onChanged: (double valuee) {
                          setState(() { heightt=valuee.round();
                          });
                        },
                      ),
                    ),
                  ],
                ),),
                ),
                Expanded(child:  Row(children: [
                  Expanded(child: reusable(cc:Color(inactivecolor),childwidget:Column(mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(weight.toString(),style:TextStyle(fontSize:36 ) ,),Text("Weight",style:TextStyle(fontSize:20)),SizedBox(height:5 ,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                        FloatingActionButton(heroTag: 'weight_minus',child:Icon(Icons.remove) ,onPressed: (){decrease();}),SizedBox(width:10 ,),FloatingActionButton( heroTag: 'weight_plus',child:Icon(Icons.add) ,onPressed: (){increase();})
                      ],)
                    ],),),
                  ),Expanded(child: reusable(cc:Color(inactivecolor),childwidget:Column(mainAxisAlignment:MainAxisAlignment.center,
                    children: [
                      Text(age.toString(),style:TextStyle(fontSize:36 ) ,),Text("Age",style:TextStyle(fontSize:20)),SizedBox(height:5 ,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                        FloatingActionButton( heroTag: 'age_minus',child:Icon(Icons.remove) ,onPressed: (){decrease_age();}),SizedBox(width:10 ,),FloatingActionButton(heroTag: 'age_plus',child:Icon(Icons.add) ,onPressed: (){increase_age();})
                      ],)
                    ],),),
                  ),
                ],),
                ),
                GestureDetector(onTap:(){
                  var bb= calculate(heightt.toDouble(),weight.toDouble()) ;
                  print("Bmi is $bb");
                  var wr = weightresult(bb);
                  print("You are $wr");
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Result(BMI: bb,weightr: wr),

                    ),
                  );
                } ,
                  child: Container(color: Color(redcolor),
                      height: bottomheight,
                      width: double.infinity,
                      child: Center(child:Text("CALCULATE BMI",style: TextStyle(fontWeight:FontWeight.w400,fontSize:30  ),))),
                ),

              ],
            )
        )

    );
  }
}


