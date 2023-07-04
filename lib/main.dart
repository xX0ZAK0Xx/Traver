import 'package:flutter/material.dart';
import 'package:traver/screens/bottom_bar.dart';
import 'package:traver/utils/app_styles.dart';
import 'package:google_fonts/google_fonts.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final jost = GoogleFonts.jost();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: jost.fontFamily,
        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
        primaryColor: primary,
      ),
      home: const BottomBar(),
    );
  }
}
