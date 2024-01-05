import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class BigText extends StatelessWidget {
  double size;
  final String text;
  Color? color;
  TextOverflow overflow;
  BigText({super.key, 
  required this.text,
  this.size=0,
  this.color= const Color(0xFF332d2b),
  this.overflow=TextOverflow.ellipsis,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overflow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size==0?Dimensions.font20:size,
        fontWeight: FontWeight.w400
      ),
    );
  }
}