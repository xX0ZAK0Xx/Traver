import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:traver/utils/app_layout.dart';
import 'package:traver/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.only(right: 16),
      width: size.width*0.6,
      height: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 233, 233, 233),
            Color.fromARGB(255, 192, 192, 192),
          ],
        )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HotelImage(hotelImage: "assets/images/one.png",),
          SizedBox(height: 10,),
          Text("Luxurious", style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w900)),
          SizedBox(height: 10,),
          Text("London", style: Styles.headLineStyle3.copyWith(fontWeight: FontWeight.w900)),
          SizedBox(height: 10,),
          Text("\$30/night", style: Styles.headLineStyle1.copyWith(fontWeight: FontWeight.w900)),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}

class HotelImage extends StatelessWidget {
  final String hotelImage;

  const HotelImage({super.key, required this.hotelImage});
  

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        // color: Styles.primaryColor,
        image: DecorationImage(image: AssetImage(hotelImage), fit: BoxFit.cover),
        
      ),
    );
  }
}