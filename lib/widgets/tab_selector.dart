
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TabSelector extends StatefulWidget {
  final String tab1, tab2;
  
  const TabSelector({
    super.key, required this.tab1, required this.tab2,
  });

  @override
  State<TabSelector> createState() => _TabSelectorState();
}

class _TabSelectorState extends State<TabSelector> {
  Color firstInkwellColor = Color.fromARGB(255, 255, 255, 255);
  Color secondInkwellColor = Color.fromARGB(255, 230, 239, 255);

  void exchangeColors() {
    setState(() {
      Color tempColor = firstInkwellColor;
      firstInkwellColor = secondInkwellColor;
      secondInkwellColor = tempColor;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 206, 206, 206),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Expanded(
            child: InkWell(
              onTap: exchangeColors,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: firstInkwellColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), bottomLeft: Radius.circular(20), bottomRight: Radius.circular(5), topRight: Radius.circular(5)),
                ),
                child: Center(child: Text(widget.tab1, style: Styles.headLineStyle2.copyWith(color: const Color.fromARGB(221, 60, 60, 60)),)),
              ),
            ),
          ),
          Expanded(
            child: InkWell(
              onTap: exchangeColors,
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: secondInkwellColor,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5), bottomRight: Radius.circular(20), topRight: Radius.circular(20)),
                ),
                child: Center(child: Text(widget.tab2, style: Styles.headLineStyle2.copyWith(color: const Color.fromARGB(221, 60, 60, 60),)
                ),
              ),)
            ),
          ),
        ],
      ),
      
    );
  }
}