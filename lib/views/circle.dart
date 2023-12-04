import 'package:flutter/material.dart';

class Circles extends StatelessWidget {
Color color ;
 final Function() function;
  bool selected;
  int index;
  
   Circles({super.key,required this.color,
   required this.selected,required this.index,
   
  required this.function,});


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: function,
      child: Container(
                          margin: EdgeInsets.only(right: 37),
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: color
                            ,
                            border: selected?Border.all(width: 4,
                            color: Color(0xffD01000)):null
                    
                    
                          ),
                        ),
    );;
  }
}