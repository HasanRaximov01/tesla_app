import 'package:figma_13task/screen/last_page.dart';
import 'package:figma_13task/views/prize_car.dart';
import 'package:flutter/material.dart';

import '../services/constants/colors.dart';
import '../services/constants/images.dart';
import '../services/constants/strings.dart';

class FivePage extends StatelessWidget {
   final Function() function ;
  const FivePage({super.key,required this.function});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children:[ Column(
        children: [
          Expanded(child:Container(color: Colors.black,
          child: Image.asset(CustomImages.imageui5,
          fit: BoxFit.cover
        
          ,width: MediaQuery.of(context).size.width,),) ,flex: 5,),
          Expanded(flex: 3,child: SizedBox(),
          )
      
        ],
        ),
        Align(alignment: Alignment.bottomCenter,
        child:  
        Container(height: MediaQuery.of(context).size.height*3/8,
          decoration: BoxDecoration(
            color: CustomColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(36),
            )
          ),
          alignment: Alignment.topLeft,
          
          padding: EdgeInsets.symmetric(horizontal: 42),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 20,),
               //  # select interior
              Text(CustomStrings.autipilot,
              style: TextStyle(
                fontSize: 16,
                color: CustomColors.greyshade600
              ),),
              SizedBox(height: 15,)
              ,   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: TextSpan(
                        text: CustomStrings.fulself,
                        children: [
                          TextSpan(text: "\$5,000",
                          style: TextStyle(fontSize: 21,
                          color: Color(0xffD01000)))
                        ],
                        style: TextStyle(fontSize: 19,
                        height: 1.3,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,)
                      )),


                       RichText(text: TextSpan(
                        text: CustomStrings.autipilot,
                        children: [
                          TextSpan(text: CustomStrings.autipilotprize,
                          style: TextStyle(fontSize: 21,
                          fontWeight: FontWeight.w100,
                          color: CustomColors.greyshade600))
                        ],
                        style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w500,
                        height: 1.3,
                        color: CustomColors.greyshade600)
                      )),

                      
                      
                    ],
                  ),
                  SizedBox(height: 15,),
                  Text(CustomStrings.ui5bottomtext,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontSize: 15,
                     
                    color: CustomColors.greyshade600
                  ),),
                  SizedBox(height: 15,),
                    CarPrize(prize: "60,700",function:function,)
            ],
          ),
        ) ,),
        
     ] )
      
    );
 
  }
}