import 'package:figma_13task/services/constants/colors.dart';
import 'package:figma_13task/services/constants/images.dart';
import 'package:flutter/material.dart';

import '../services/constants/strings.dart';

class LastPage extends StatelessWidget {
  const LastPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Image.asset("assets/images/last_photo.png"),
        Padding(
          padding: EdgeInsets.only(top: 65),
          child: Align(
            alignment: Alignment.topCenter,
            child: Image.asset(CustomImages.tesla
            ,color: Colors.white,),
            ),
        )
,Align(
  alignment: Alignment.bottomCenter,
  child: Container(
     
    height: 400,
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
       borderRadius: BorderRadius.only(
        topLeft: Radius.circular(40),
        topRight: Radius.circular(40)
       ),
      color: Colors.black
    ),
    child: Column(
      children: [
        SizedBox(height: 20,),
        Text("Summary",style: TextStyle(
          fontSize: 24,
          color: CustomColors.greyshade600,
        ),),
        SizedBox(height: 15,),
        Text("Your Model Y",style: TextStyle(
          fontSize: 40,fontWeight: FontWeight.w500,
          color: CustomColors.white,
        ),),
        SizedBox(height:15 ,),
        Text("\$60,700",style: TextStyle(
          fontSize: 36,fontWeight: FontWeight.w300,
          color: CustomColors.white,
        ),),
        SizedBox(height: 30,),
        Container(
              alignment: Alignment.center,
                   height: 58,
              margin: const EdgeInsets.symmetric(horizontal: 88),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
                border: Border.all(
                  width: 1.8,
                  color: CustomColors.ui1red,
                
                )
          
              ),
              child: Image.asset("assets/images/iphone_pay.png",
              width: 220,
              fit: BoxFit.cover,
              height: 40,),
            ),
      ],
    ),
  ),
)
        ]
      ),
    );
  }
}