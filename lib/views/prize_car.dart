import 'package:flutter/material.dart';

class CarPrize extends StatelessWidget {
 final String prize;
 final Function() function;
  

  const CarPrize({super.key,required this.prize,required this.function});

  @override
  Widget build(BuildContext context) {
    return   Row(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 20,),
              Text("\$$prize",
              style:TextStyle(fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.w300),),
               
               GestureDetector(
                 onTap: function,
                 child: Container(height: 50,
                 alignment: Alignment.center,
                 child: Text("Next",
                 style: TextStyle(fontSize: 14,
                 fontWeight: FontWeight.w600,
                 color: Colors.black),),
                 width: 120,
                  decoration: BoxDecoration(
                    border: Border.all(width: 1.5,
                    color: Color(0xffD01000)),
                    borderRadius: BorderRadius.circular(20)
                  ),
                 ),
               ),
                SizedBox(height: 40,),
            ],
          );
  }
}