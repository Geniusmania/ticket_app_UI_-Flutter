import 'package:flutter/material.dart';
import 'package:tick/utils/app_layout.dart';

import '../utils/app_styles.dart';

class AirlineHotel extends StatelessWidget {
 // final bool? isColor;
  final String firstTab;
  final String secondTab;
  const AirlineHotel({super.key, required this.firstTab, required this.secondTab,});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return  Container(
      //padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50)
      ),
      child: Row(
        children: [
          /*
                  Airline Tickets
                  */
          Container(
            padding:  const EdgeInsets.symmetric(vertical: 7),
            width: size.width*.45,
            decoration:  BoxDecoration(
                color: Colors.grey.shade500,

                borderRadius: const BorderRadius.horizontal(left: Radius.circular(50))
            ),

            child:  Center(child: Text(firstTab,style: Styles.textStyle,)),
          ),
          /*Hotel*/
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7),
            width: size.width*.45,
            decoration:  BoxDecoration(
                color: Colors.grey.shade600,
                borderRadius: const BorderRadius.horizontal(right: Radius.circular(50))
            ),

            child: Center(child: Text(secondTab,style: Styles.textStyle,)),
          ),


      ],
      ),
    );
  }
}
