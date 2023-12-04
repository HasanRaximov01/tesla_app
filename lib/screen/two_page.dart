
import 'package:figma_13task/views/prize_car.dart';
import 'package:flutter/material.dart';

class Twopage extends StatefulWidget {
  const Twopage({super.key,required this.function});
   final Function () function;

  @override
  State<Twopage> createState() => _TwopageState();
}

class _TwopageState extends State<Twopage>with TickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    
    super.initState();
  
  }
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
                  "Select Your Car",
                  style: TextStyle(
                    fontSize: 20,
                     color:Color(0xffA4B0BC),
                  ),
                  
                  ),
                  Image.asset("assets/images/car_1.png"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RichText(text: TextSpan(
                        text: "Performance\n",
                        children: [
                          TextSpan(text: "\$55,700",
                          style: TextStyle(fontSize: 21,
                          color: Color(0xffD01000)))
                        ],
                        style: TextStyle(fontSize: 19,
                        height: 1.3,
                        fontWeight: FontWeight.w400,
                        color: Colors.black,)
                      )),
                       RichText(text: TextSpan(
                        text: "Long Range\n",
                        children: [
                          TextSpan(text: "\$46,700",
                          style: TextStyle(fontSize: 18,
                          color: Colors.grey.shade400))
                        ],
                        style: TextStyle(fontSize: 21,
                        fontWeight: FontWeight.w300,
                        height: 1.3,
                        color: Colors.black,)
                      )),
                      
                      
                    ],
                  )
                ],
              ),
            ),

            
          )),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 40,),
            
              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(35),topLeft: Radius.circular(35) )
              ),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 64),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                  
                        RichText(text: TextSpan(
                          text: "3.5s\n",
                          children: [
                            TextSpan(text: "0-60 mph",
                            style: TextStyle(fontSize: 10,
                            fontWeight: FontWeight.w300))
                          ],
                          style: TextStyle(fontSize: 24,
                          fontWeight: FontWeight.w800,
                          height: 1.3,
                          color: Colors.black,)
                        )),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.black.withOpacity(0.3),
                        ),
                            RichText(text: TextSpan(
                          text: "150mph\n",
                          children: [
                            TextSpan(text: "top speed",
                            style: TextStyle(fontSize: 10,
                            fontWeight: FontWeight.w300))
                          ],
                          style: TextStyle(fontSize: 24,
                          fontWeight: FontWeight.w800,
                          height: 1.3,
                          color: Colors.black,)
                        )),
                        
                  
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  
                    Text("""Tesla All-Wheel Drive has two independent\nmotors.Unlike traditional all-wheel drive\nsystems, these two motors digitally control\ntorque to the front and rear wheels—for far\nbetter handling and traction control.  """,
                    textAlign:TextAlign.start,
                    style: TextStyle(fontSize: 13,
                    height: 1.5,
                     color: Color(0xff979797)),
                     
                    ),
                     SizedBox(height: 40,),
        
  CarPrize(prize: "55,700",function: widget.function, ),
              ],
              ),

            
          )),
         
        ],
      ),
     
     

    );
  }
}