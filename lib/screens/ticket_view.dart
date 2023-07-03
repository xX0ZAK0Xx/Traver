import 'package:flutter/material.dart';
import 'package:traver/utils/app_layout.dart';
import 'package:traver/utils/app_styles.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  const TicketView({super.key, required this.ticket});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);  
    return SizedBox(
      width: size.width,
      height: 230,
      child: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 198, 198, 198).withOpacity(0.3),
            spreadRadius: 0,
            blurRadius: 20,
            offset: Offset(0, 0), // changes position of shadow
          ),
        ],),
        margin: EdgeInsets.all(16),
        child: Column(
          children: [
            //Upper part
            Container(
              decoration: BoxDecoration(
                color: Styles.ticketColor,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), topRight: Radius.circular(25)),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'], style: Styles.tcheadLineStyle3,),
                      Spacer(),
                      Circle(),
                      Expanded(
                        child: Stack(
                        children: [
                          DottedLine(dots: 10,),
                          Center(
                            child: Transform.rotate(
                              angle: 1.6,
                              child: Icon(Icons.airplanemode_active, color: Colors.white,),
                            ),
                          )
                        ]), 
                      ),
                      Circle(),
                      Spacer(),
                      Text(ticket['to']['code'], style: Styles.tcheadLineStyle3,),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(ticket['from']['name'], style: Styles.tcheadLineStyle3.copyWith(fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                      Text(ticket['flying_time'], style: Styles.tcheadLineStyle3),
                      SizedBox(
                        width: 100,
                        child: Text(ticket['to']['name'],textAlign: TextAlign.end, style: Styles.tcheadLineStyle3.copyWith(fontSize: 15, fontWeight: FontWeight.w400)),
                      ),
                    ],
                  )
                ],
              ),
            ),
            //Middle part
            Container(
              color: Styles.blueColor,
              child: Row(
                children: [
                  HalfCircle(),
                  Expanded(child: DottedLine(dots: 20)),
                  Transform.rotate(angle: 3.15, child: HalfCircle(),),
                ],
              ),
            ),
            //Bottom part
            Container(
              decoration: BoxDecoration(
                color: Styles.blueColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
              ),
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(ticket['date'], style: Styles.tcheadLineStyle3,),
                          Text("Date", style: Styles.headLineStyle4.copyWith(color: Colors.white,)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(ticket['departure_time'], style: Styles.tcheadLineStyle3,),
                          Text("Departure time", style: Styles.headLineStyle4.copyWith(color: Colors.white,)),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(ticket['number'].toString(), style: Styles.tcheadLineStyle3,),
                          Text("Gate", style: Styles.headLineStyle4.copyWith(color: Colors.white,)),
                        ],
                      ),
                      
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      )
    );
  }
}

class HalfCircle extends StatelessWidget {
  const HalfCircle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20,
      width: 10,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(topRight: Radius.circular(20),  bottomRight: Radius.circular(20),),
        ),
      ),
    );
  }
}

class DottedLine extends StatelessWidget {
  final int dots;

  const DottedLine({super.key, required this.dots});
  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Flex(
        direction: Axis.horizontal,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: List.generate(dots, (index) => Text("-", style: Styles.tcheadLineStyle3,)) ,
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2, color: Colors.white),
      ),
    );
  }
}