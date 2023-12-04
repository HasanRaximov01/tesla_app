import 'package:figma_13task/screen/three_page.dart';
import 'package:figma_13task/services/constants/colors.dart';
import 'package:figma_13task/services/constants/images.dart';
import 'package:figma_13task/services/constants/strings.dart';
import 'package:figma_13task/views/circle.dart';
import 'package:figma_13task/views/prize_car.dart';
import 'package:flutter/material.dart';

class FourPage extends StatefulWidget {
   final Function () function;
  const FourPage({super.key,required this.function});

  @override
  State<FourPage> createState() => _FourPageState();
}

class _FourPageState extends State<FourPage> {
   int currentindex=0;
   List <String>imageslistui4=[
    "assets/images/ui4_image.png",
    "assets/images/ui4_nextimage.png",

   ];
    String image="assets/images/ui4_image.jpg";

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children:[ Column(
        children: [
          Expanded(flex: 5,child:Container(color: Colors.black,
          child: Image.asset(image


          ,
          fit: BoxFit.cover,
          
           
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).width,
              
           ),) ,),
       const   Expanded(flex: 3,child: SizedBox(),
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
              Text(CustomStrings.selectinterior,
              style: TextStyle(
                fontSize: 16,
                color: CustomColors.greyshade600
              ),),
              SizedBox(height: 15,)
              ,   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: TextSpan(
                        text: "Black and white \n",
                        children: [
                          TextSpan(text: "\$1,000",
                          style: TextStyle(fontSize: 21,
                          color: Color(0xffD01000)))
                        ],
                        style: TextStyle(fontSize: 19,
                        height: 1.3,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,)
                      )),


                       RichText(text: TextSpan(
                        text: "All back\n",
                        children: [
                          TextSpan(text: "Included",
                          style: TextStyle(fontSize: 18,
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
                  Row(
                    children: [
                       Circles(color: Colors.grey, selected: currentindex==0, index: 0, function: (){
                         
                          currentindex=0;
                          image=imageslistui4[currentindex];
                          setState(() {
                            
                          });

                       }),
                       Circles(color: Colors.black, selected: currentindex==1, index: 1, function: (){
                         
                          currentindex=1;
                           image=imageslistui4[currentindex];
                          setState(() {
                            
                          });

                       })
                     
                    ],
                  ),
                  SizedBox(height: 15,),
                CarPrize(prize: "55,700",function: widget.function,),
            ],
          ),
        ) ,),
        
     ] )
      
    );
  }
}