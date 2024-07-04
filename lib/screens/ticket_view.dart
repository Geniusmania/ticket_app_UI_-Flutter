import 'package:flutter/material.dart';
import 'package:tick/utils/app_layout.dart';
import 'package:tick/utils/app_styles.dart';
import 'package:tick/widgets/thick_container.dart';


class TicketView extends StatelessWidget {
  final Map<String, dynamic> ticket;
  final bool isColor;
  const TicketView({super.key, required this.ticket, required this.isColor });

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: 200,
      child: Container(
        margin: const EdgeInsets.only(right: 16),
        child: Column(
          children: [
            // color blue part
            Container(
              decoration:   BoxDecoration(
                  color: isColor==false? const Color(0xff526799):Colors.white,
                  borderRadius: const BorderRadius.only(topLeft: Radius.circular(21), topRight: Radius.circular(21))),
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(ticket['from']['code'],style:isColor==false? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                      Expanded(child: Container(),),
                      const ThickContainer(isColor: true,),
                      Expanded(
                          child:
                      Stack(
                        children:[
                        SizedBox(height: 24,
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                              return Flex(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  direction: Axis.horizontal,
                                  children:List.generate((constraints.constrainWidth()/6).floor(), (index) =>   SizedBox(width: 3,height: 1,child: DecoratedBox(decoration: BoxDecoration(color:isColor==false? Colors.white:Colors.grey.shade300),),))
                              );  },

                            ),
                        ),
                          Center(child: Transform.rotate(angle: 1.5,child:  Icon(Icons.local_airport_rounded, color:isColor==false? Colors.white:const Color(0xFFBACCF7)),)),]
                      )
                      ),

                      const ThickContainer(isColor: true,),
                      Expanded(child: Container(),),
                      Text(ticket['to']['code'],style:isColor==false? Styles.headLineStyle3.copyWith(color:Colors.white):Styles.headLineStyle3),
                    ],
                  ),
                  const SizedBox(height: 3,),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                    SizedBox(width: 100,child: Text(ticket['from']['name'],style: isColor==false? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),),
                    Text(ticket['flying time'],style:isColor==false? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle3,),
                    SizedBox(width: 100,child: Text(ticket['to']['name'], textAlign: TextAlign.end, style: isColor==false? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4,),),
                  ],),
                ],
              ),
            ),
            // color orange  top part
            Container(
              color:isColor==false? Colors.deepOrange:Colors.white,
              child: Row(
                children: [
                  const SizedBox(height: 20,
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(topRight: Radius.circular(10),
                     bottomRight: Radius.circular(10)),
                      color: Colors.white,
                    ),
                  ),),
                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) { return  Flex( direction: Axis.horizontal,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children:List.generate((constraints.constrainWidth()/15).floor(), (index) => const SizedBox(width: 5,
                          height: 1,
                          child: DecoratedBox(decoration:
                          BoxDecoration(color: Colors.white),),)),

                      ); },

                    ),
                  ),
                  ),
                  const SizedBox(height: 20,
                    width: 10,
                    child: DecoratedBox(

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: Colors.white,
                      ),
                    ),),
                ],
              ),
            ),
          //   color orange bottom
            Container(
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16,bottom: 16),

              decoration:  BoxDecoration(color:isColor==false? Colors.deepOrange:Colors.white,
              borderRadius: const BorderRadius.only(bottomRight: Radius.circular(20),
              bottomLeft: Radius.circular(20))),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(ticket['date'],style:isColor==false? Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3),
                    const SizedBox(height: 5,),
                    Text("DATE",style:isColor==false? Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4),
                  ],
                ),
                    Column(
                      //crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Text(ticket['departure time'],style:isColor==false? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                        const SizedBox(height: 5,),
                        Text("Departure time",style:isColor==false? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [

                        Text(ticket['number'].toString(),style:isColor==false? Styles.headLineStyle3.copyWith(color: Colors.white):Styles.headLineStyle3),
                        const SizedBox(height: 5,),
                        Text("Number",style:isColor==false? Styles.headLineStyle4.copyWith(color: Colors.white):Styles.headLineStyle4),
                      ],
                    ),
                  ],
                )
              ],),
            )
          ],
        ),
      ),

    );
  }
}
