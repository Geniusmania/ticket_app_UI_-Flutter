
import 'package:flutter/material.dart';

import 'package:tick/screens/hotel_view.dart';
import 'package:tick/screens/ticket_view.dart';
import 'package:tick/utils/app_info_list.dart';
import 'package:tick/utils/app_styles.dart';

class HomeScreen extends StatelessWidget {
final bool? isColor;
  const HomeScreen({super.key, this.isColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(children: [
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Good morning',
                        style: Styles.headLineStyle3,
                      ),
                      const SizedBox(height: 5,),
                      Text(
                        'Book Tickets',
                        style: Styles.headLineStyle1,
                      )
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("assets/images/img_1.png"),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xFFF4F6Fd),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                child: Row(
                  children: [
                    const Icon(
                      Icons.search,
                      color: Color(
                        0xFFBFC205,
                      ),
                    ),
                    Text(
                      'Search',
                      style: Styles.headLineStyle4,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Upcoming flights',
                    style: Styles.headLineStyle2
                  ),
                  InkWell(onTap: (){},
                    child:
                    Text(
                        'View all',
                        style:
                            Styles.textStyle.copyWith(color: Styles.primaryColor)
                      ),
                  ),

                ]
              )
            ]),
          ),
           const SizedBox(height: 15,),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16),
            child: Row(
                children: ticketList.map((singleTick) => TicketView(ticket: singleTick, isColor: false,)).toList()
            )

          ),
          const SizedBox(height: 15,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                      'Hotels',
                      style: Styles.headLineStyle2
                  ),
                  InkWell(onTap: (){},
                    child:
                    Text(
                        'View all',
                        style:
                        Styles.textStyle.copyWith(color: Styles.primaryColor)
                    ),
                  ),

                ]
            ),
          ),
          const SizedBox(height: 5,),
           SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 16,right: 16 ),
            child: Row(
              children: hotelList.map((singleHotel) => HotelView(hotel: singleHotel)).toList()
            ),
          )
        ],
      ),
    );
  }
}
