import 'package:flutter/material.dart';

Color primary = Color.fromARGB(255, 51, 51, 51);
class Styles{
  static Color primaryColor = primary;
  static Color textColor = const Color.fromARGB(255, 24, 24, 24);
  static Color ticketColor = Color.fromARGB(255, 82, 98, 118);
  static Color bgColor = Color.fromARGB(255, 239, 247, 251)!;
  static Color blueColor = Color.fromARGB(255, 127, 153, 224)!;

  static TextStyle textStyle = TextStyle(fontSize: 16, color: textColor, fontWeight: FontWeight.w500);
  static TextStyle headLineStyle1 = TextStyle(fontSize: 26, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle2 = TextStyle(fontSize: 21, color: textColor, fontWeight: FontWeight.bold);
  static TextStyle headLineStyle3 = TextStyle(fontSize: 17, color: Colors.grey.shade700, fontWeight: FontWeight.w500);
  static TextStyle tcheadLineStyle3 = TextStyle(fontSize: 17, color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.w500);
  static TextStyle headLineStyle4 = TextStyle(fontSize: 14, color: Colors.grey.shade500, fontWeight: FontWeight.w500);
}