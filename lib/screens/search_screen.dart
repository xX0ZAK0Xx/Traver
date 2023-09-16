import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traver/utils/app_layout.dart';
import 'package:traver/widgets/search_widget/icon_text.dart';
import 'package:traver/utils/app_styles.dart';

import '../widgets/tab_selector.dart';
import '../widgets/two_text.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          children: [
            Text("What are\nYou looking for?", style: Styles.headLineStyle1.copyWith(fontSize: 30),),
            SizedBox(height: 20,),
            TabSelector(tab1: "Air Tickets", tab2: "Hotels",),
            SizedBox(height: 20,),

            AppIconText(icon: Icons.flight_takeoff, text: "Departure",),
            SizedBox(height: 10,),
            AppIconText(icon: Icons.flight_land, text: "Arrival",),
            SizedBox(height: 20,),

            Flex(
              direction: Axis.vertical,
              children: [
                Listener(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Styles.primaryColor,
                      ),
                      child: Center(
                        child: Text(
                          "Search Flights",
                          style: Styles.headLineStyle2.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            TwoTextHeader(bigText: "Upcoming Flights", smallText: "View all"),

            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  // margin: EdgeInsets.only(right: 16),
                  width: size.width*0.45,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 219, 219, 219),
                        Color.fromARGB(255, 255, 255, 255),
                        Color.fromARGB(255, 219, 219, 219),
                      ],
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 180,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                            image: AssetImage("assets/images/sit.jpg"), 
                            fit: BoxFit.cover
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      Text("Get 20% discount for the early booking of the flight", style: Styles.headLineStyle2.copyWith(fontSize: 21), textAlign: TextAlign.start,),
                    ],
                  ),
                ),
                Container(
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: 
                        [
                          Container(
                            height: 300,
                            width: size.width * .4,
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              border: Border.all(color:Styles.primaryColor, width: 1),
                              borderRadius: BorderRadius.circular(15),
                              color: Color.fromARGB(255, 239, 239, 239),
                            ),
                            child: Column(
                              children: [
                                Text("Discounts on Survey",  style: Styles.headLineStyle1,),
                                SizedBox(height: 20,),
                                Text("Participate in small surveys on our services and get exciting discounts",  style: Styles.headLineStyle1.copyWith(fontSize: 19, fontWeight: FontWeight.w600),),
                              ],
                            ),
                          ),
                          Positioned(
                            right: -40,
                            top: -40,
                            child: Container(
                              padding: EdgeInsets.all(40),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.transparent,
                                border: Border.all(width: 20, color: Color.fromARGB(61, 116, 116, 116)),
                              ),
                            ),
                          )
                        ]
                      ),
                      // SizedBox(height: 20,),
                      Container(
                        height: 80,
                        width:  size.width * .4,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Styles.primaryColor,
                        ),
                        child: Center(child: Text("Subscribe", style: Styles.headLineStyle1.copyWith(color: Colors.white),),),
                      )
                    ],
                  ),
                ),
              ],

            ),
          ],
        ),
      ),
    );
  }
}