import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:traver/widgets/home_widgets/hotel_screen.dart';
import 'package:traver/widgets/home_widgets/ticket_view.dart';
import 'package:traver/utils/app_info_list.dart';
import 'package:traver/utils/app_styles.dart';

import '../widgets/two_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: SafeArea(
        child: ListView(
          children: [
            // Title, logo, search bar, and upcoming flights title
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Hello Traveler!", style: Styles.headLineStyle3,),
                          SizedBox(height: 5,),
                          Text("Book Tickets", style: Styles.headLineStyle1,),
                        ],
                      ),
                      Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/img_1.png"),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [
                        Icon(FluentSystemIcons.ic_fluent_search_regular, color: Colors.black45,),
                        Text("Search..", style: Styles.headLineStyle4,),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,),
                  TwoTextHeader(bigText: "Upcoming Flights", smallText: "View all"),
                ],
              ),
            ),
            
            //Tickets
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: ticketList.map((ticket) => TicketView(ticket: ticket)).toList(),
              )
            ),

            // Hotel Titlebar
            Container(
              padding: EdgeInsets.all(16),
              child: TwoTextHeader(bigText: "Hotels", smallText: "View all",)
            ),

            //Hotel area
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(16),
              child: Row(
                children: hotelList.map((hotel) => HotelScreen(hotel: hotel)).toList()
              ),
            ),
          ],
        ),
      ),
    );
  }
}

