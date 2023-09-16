import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:traver/utils/app_info_list.dart';
import 'package:traver/utils/app_styles.dart';

import '../widgets/home_widgets/ticket_view.dart';
import '../widgets/tab_selector.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        elevation: 0,
        title: Text(
          "Tickets",
          style: Styles.headLineStyle1,
        ),
        backgroundColor: Styles.bgColor,
      ),
      body: SafeArea(
        child: Stack(children: [
          ListView(
            padding: EdgeInsets.all(16),
            children: [
              TabSelector(tab1: "Upcomming", tab2: "Previous1"),
              SizedBox(height: 20,),
              TicketView(ticket: ticketList[0],),
            ],
          ),
        ]),
      ),
    );
  }
}
