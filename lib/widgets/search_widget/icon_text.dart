import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class AppIconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const AppIconText({
    super.key, required this.icon, required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(children: [
        Icon(icon , color: Colors.grey[400]),
        SizedBox(width: 20,),
        Text(text, style: Styles.textStyle.copyWith(fontSize: 20))
      ],),
    );
  }
}