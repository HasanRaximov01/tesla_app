import 'package:figma_13task/screen/five_page.dart';
import 'package:figma_13task/screen/four_page.dart';
import 'package:figma_13task/screen/last_page.dart';
import 'package:figma_13task/screen/one_page.dart';
import 'package:figma_13task/screen/three_page.dart';
import 'package:figma_13task/screen/two_page.dart';
import 'package:flutter/material.dart';

import '../services/constants/icons.dart';
import '../services/constants/images.dart';

class Onepage extends StatefulWidget {
  final int index;
  const Onepage({super.key, this.index = 0});

  @override
  State<Onepage> createState() => _OnepageState();
}

class _OnepageState extends State<Onepage> {
  late final PageController controller;

  int currentindex = 0;
  int lastpage=0;
  @override
  void initState() {
    super.initState();
    controller = PageController(initialPage: 0);
  }

  List listtab = ["1. Car", "2. Exterior", "3. Interior", "4. Autopilot"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 40,
          bottom: PreferredSize(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (int i = 0; i < listtab.length; i++)
                    GestureDetector(
                      onTap: () {

                        if(i<currentindex){
                          controller.jumpToPage(i);
                          currentindex=i;
                          setState(() {
                            
                          });

                        }

                      
                      },
                      child: Column(
                        children: [
                          Text(
                            listtab[i],
                            style: TextStyle(
                                fontSize: 14,
                                color: i>currentindex?Colors.grey: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 13),
                            height: 2,
                            width: listtab[i].length * 7.toDouble(),
                            color: currentindex == i
                                ? Colors.red
                                : Colors.transparent,
                          )
                        ],
                      ),
                    )
                ],
              ),
              preferredSize: Size(MediaQuery.of(context).size.width, 60)),
          backgroundColor: Colors.white,
          leading: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Image.asset(CustomIcons.back)),
          title: Image.asset(CustomImages.tesla),
          centerTitle: true,
          elevation: 0,
        ),
        body: PageView(
          controller: controller,
          physics: NeverScrollableScrollPhysics(),
          children: [
            Twopage(
              function: () {
                currentindex=1;
                setState(() {
                  controller.nextPage(duration: Duration(milliseconds: 100), curve: Curves.easeIn);
                });
              },
            ),
            ThreePage(
              
              function: () {
                 currentindex=2;
                controller.jumpToPage(2);
                setState(() {});
              },
            ),
            FourPage(
              
               function:  () {
                 currentindex=3;
                controller.jumpToPage(3);
                setState(() {});
              },

            ),
            FivePage(
               function: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LastPage()));
               },
              
            ),
          ],
        ));
  }
}
