import 'package:flutter/material.dart';
import 'package:traver/utils/app_layout.dart';
import 'package:traver/utils/app_styles.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      padding: EdgeInsets.only(right: 16),
      width: size.width*0.6,
      height: 350,
      child: Column(
        children: [
          Container(
            height: 180,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Styles.primaryColor,
              image: DecorationImage(image: AssetImage("assets/images/one.png"), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}