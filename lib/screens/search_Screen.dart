import 'package:flutter/material.dart';
import 'package:tick/utils/app_layout.dart';
import 'package:tick/utils/app_styles.dart';
import 'package:tick/widgets/Icon_tickets.dart';
import 'package:tick/widgets/UpcomingViewall.dart';
import 'package:tick/widgets/airlineTicketsHotel.dart';

class Search extends StatelessWidget {
  
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
        children: [
          Text('What are\nyou looking for?',style: Styles.headLineStyle1.copyWith(fontSize: 35),),
          const SizedBox(height: 40,),
          const AirlineHotel(firstTab: "Airline Tickets", secondTab: "Hotels"),


          const SizedBox(height:  25,),

         const IconText(icon: Icons.flight_takeoff_rounded, text: "Departure"),
         const SizedBox(height: 15,),
         const IconText(icon: Icons.flight_land_rounded, text: "Arrival"),
         const SizedBox(height: 25,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text('Find Tickets',style: Styles.textStyle.copyWith(color: Colors.white,fontSize: 20),)),),
          const SizedBox(height: 25,),
         const Upcoming(bigText: 'Upcoming flights', smallText: 'View all'),
          const SizedBox(height: 25,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 350,
                width: size.width*.44,

                padding: const EdgeInsets.symmetric(horizontal:15,vertical: 15
                ),
                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 100,
                      decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("assets/images/img_1.png")
                        )
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),

                      child: Center(child: Text("20% discount on the early booking of this flight.Don't miss.",style: Styles.textStyle.copyWith(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500),)),
                    )
                  ],
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                        height: 200,
                        width: size.width*.44,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.greenAccent,
                        ),
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Discount \nfor survey', style: Styles.headLineStyle1.copyWith(color: Colors.white),),
                            const SizedBox(height: 5,),
                            Text('Take a survey about our services and get a discount',style: Styles.headLineStyle2.copyWith(color: Colors.white),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 35),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.all(width: 15,color: Colors.green)
                        ),
                      ),
                      )
                    ],

                  ),
                  const SizedBox(height: 10,),
                  Container(
                    height: 140,
                    width: size.width*.44,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        Text("Take Love",style: Styles.headLineStyle1.copyWith(color: Colors.white),),

                      ],
                    ),
                  )
                ],
              )
            ],
          )

        ],
      ),
    );
  }
}
