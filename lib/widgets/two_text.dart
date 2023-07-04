import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TwoTextHeader extends StatelessWidget {
  final String bigText;
  final String smallText;
  const TwoTextHeader({
    super.key, required this.bigText, required this.smallText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        textBaseline: TextBaseline.alphabetic,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: [
          Text(bigText, style: Styles.headLineStyle1),
          Text(smallText, style: Styles.textStyle.copyWith(color: Styles.blueColor),),
        ],
      ),
    );
  }
}