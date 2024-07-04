import 'package:flutter/material.dart';
import 'package:tick/screens/ticket_view.dart';
import 'package:tick/utils/app_info_list.dart';
import 'package:tick/utils/app_styles.dart';
import 'package:tick/widgets/airlineTicketsHotel.dart';

class Ticket extends StatelessWidget {
  const Ticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,

      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children:  [
          Text("Ticket",style: Styles.headLineStyle1,),
          const SizedBox(height: 20,),
          const  AirlineHotel(firstTab: "Upcoming", secondTab: "Previous",),
          const SizedBox(height: 20,),
          TicketView(ticket: ticketList[0],isColor:true),
        ],
      ),
    );
  }
}
