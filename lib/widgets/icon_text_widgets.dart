import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/widgets/app_text.dart';

class IconTextWidget extends StatelessWidget {
  final IconData icon;
  final String text;
  final Color iconColor;
  const IconTextWidget({super.key, 
  required this.icon, 
  required this.text, 
  required this.iconColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon, color: iconColor,size: Dimensions.iconSize24,),
        SizedBox(width: 5,),
        AppText(text:text ,),
      ],
    );
  }
}