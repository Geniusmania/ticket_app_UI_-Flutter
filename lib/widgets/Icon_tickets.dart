import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  const IconText({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
        decoration: BoxDecoration(

          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Icon(icon,color: Colors.black26,),
            const SizedBox(width: 10,),
             Text(text,style: Styles.textStyle,)
          ],
        )


    )
    ;
  }
}
