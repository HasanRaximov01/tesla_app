import 'package:figma_13task/screen/home_page.dart';
import 'package:figma_13task/services/constants/colors.dart';
import 'package:figma_13task/services/constants/images.dart';
import 'package:figma_13task/services/constants/strings.dart';
import 'package:flutter/material.dart';

class OnePages extends StatelessWidget {
  const OnePages({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
         backgroundColor: CustomColors.blakc,
        body: Column(
          children: [
           
           //# image tesla text
             Image.asset(CustomImages.teslaui1,
            color: Colors.grey.shade800,height: 140,
            width:200,),
            SizedBox(height: 80,),
            
      // # text tesla
        const Text(CustomStrings.tesla,
        style: TextStyle(
          fontSize: 33,
          fontWeight: FontWeight.w300,
          color: Colors.white,
          
        ),),
        SizedBox(height: 24,),
         
          // # modelx modely text
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(CustomStrings.modelx,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.greyshade600
                ),),
                 SizedBox(width: 60,),
                 Text(CustomStrings.modely,
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.white
                ),),
                 SizedBox(width: 60,),
                 Text(CustomStrings.road,
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.greyshade600
                ),),
              ],
            ),
          ),
          // # image car 
          Image.asset("assets/images/ui1_image-car.png"),
         
       // # 300mi AWD text
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 65),
            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                      
                            RichText(text: TextSpan(
                              text: CustomStrings.mi300,
                              children: [
                                TextSpan(text:CustomStrings.range,
                                style: TextStyle(fontSize: 12,
                                color: CustomColors.white,
                                fontWeight: FontWeight.w500))
                              ],
                              style: TextStyle(fontSize: 24,
                              
                              fontWeight: FontWeight.w800,
                              height: 1.6,
                              color: CustomColors.white,)
                            )),
                            Container(
                              height: 40,
                              width: 1,
                              color: CustomColors.greyshade600,
                            ),
                                RichText(text: TextSpan(
                              text: CustomStrings.awd,
                              children: [
                                TextSpan(text: CustomStrings.dual,
                                style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.w500))
                              ],
                              style: TextStyle(fontSize: 24,
                              fontWeight: FontWeight.w800,
                              height: 1.6,
                              color: CustomColors.white,)
                            )),
                            
                      
                          ],
                        ),
                         
          ) ,
           SizedBox(height: 56,),
          // #acceleratio
           RichText(text: TextSpan(
            text: CustomStrings.acceleration,
            children: [
              TextSpan(text: CustomStrings.accelerationext,
              style: TextStyle(color: CustomColors.white))
    
            ],
            style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.w400,
              color: CustomColors.greyshade600,
            )
           )),
           SizedBox(height: 15,)
    
            // # acceleratio
           ,
    RichText(text: TextSpan(
            text: CustomStrings.topspeed,
            children: [
              TextSpan(text: CustomStrings.upto,
              style: TextStyle(color: CustomColors.white))
    
            ],
            style: TextStyle(
              fontSize: 15,fontWeight: FontWeight.w400,
              color: CustomColors.greyshade600,
            )
           ))
           ,
            SizedBox(height: 50,),
            GestureDetector(
              onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const Onepage()));}
             , child: Container(
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
                child: const Text(CustomStrings.ordernow,
                style: TextStyle(
                  fontSize: 20,
                  color: CustomColors.white,
                fontWeight: FontWeight.w500,
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}