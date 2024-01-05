import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  double size;
  final String text;
  Color? color;
  double height;
  SmallText({super.key, 
  required this.text,
  this.size=12,
  this.height=1.2,
  this.color= const Color(0xFF332d2b),
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
      ),
    );
  }
}