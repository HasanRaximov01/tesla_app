import 'package:figma_13task/views/circle.dart';
import 'package:flutter/material.dart';

import '../views/prize_car.dart';


class ThreePage extends StatefulWidget {
  final Function() function;
  const ThreePage({super.key,required this.function});


  @override
  State<ThreePage> createState() => _ThreePageState();
} 
  late final  TabController tabController;
  List <Color>list =[
    Colors.black,
    Colors.grey,
    Colors.blue,
    Colors.white,
    Colors.red,

    

  ];
   List <String>images =[
  "assets/images/car_black.png",
  "assets/images/car_grey.png",
 "assets/images/car_blue.png",
 "assets/images/car_white.png",
 "assets/images/car_red.png",
  ];

 int currentindex=0;

class _ThreePageState extends State<ThreePage> {
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor:  Color.fromRGBO(242, 245,248,1),
      
      
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: 
          Container(
            alignment: Alignment.topLeft,
            
            color: Color.fromRGBO(242, 245,248,1),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                
            
                children: [
                  SizedBox(height: 40,),
                  Text(
                  "Select Color",
                  style: TextStyle(
                    fontSize: 20,
                     color:Color(0xffA4B0BC),
                  ),
                  
                  ),
               SizedBox(
                height:160,
                width: MediaQuery.sizeOf(context).width,
                child: Image.asset(images[currentindex], gaplessPlayback: true,)),
                  RichText(text: const TextSpan(
                    text: "Pearl White Multi-Coat\n",
                    children: [
                      TextSpan(text: "\$2000",
                      style: TextStyle(fontSize: 20,
                      color: Color(0xffD01000)))
                    ],
                    style: TextStyle(fontSize: 22,
                    height: 1.3,
                    fontWeight: FontWeight.w400,
                    color: Colors.black,)
                  )),
                  const SizedBox(height: 30,),
                  SizedBox(
                    height: 60,
                    child: ListView.builder(

                      
                      scrollDirection: Axis.horizontal,
                      itemCount: list.length,
                    itemBuilder: (context,index){
                      return Circles(color: list[index], selected: currentindex==index, index: index, function: (){
                        currentindex=index;
                        setState(() {
                          
                        });
                      }
                        
                      );
                  
                  
                    },
                                   ),

                  ),
                  SizedBox(height: 20,),
                  Container(
                    color: Color(0xffCFD3D9),
                    width: MediaQuery.of(context).size.width,
                    height: 2,

                  ),
                   SizedBox(height: 10,),
                 RichText(text: TextSpan(
                  text: "20 '' Performance Wheels\n",
                  style: TextStyle(fontSize: 14,color: Colors.black,
                  height: 2,
                  fontWeight: FontWeight.w400)
                ,  children: [
                    TextSpan( text: "Carbon fiber spoiler")
                  ]
                 ))
                ],
              ),
            ),

            
          )),
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40,),
            
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(35),topLeft: Radius.circular(35) )
              ),
              child: Column(
                children: [
                 
                 
                     SizedBox(height: 40,),
      CarPrize(prize: "55,700",function: widget.function),  ],
              ),

            
          )),
         
        ],
      ),
     
     

    );
  }
}