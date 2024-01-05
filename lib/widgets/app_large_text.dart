import 'package:flutter/material.dart';
class AppLargeText extends StatelessWidget {
  double size;
  final String text;
  final Color color;
   AppLargeText({super.key, 
    this.size=25,
   required this.text, 
   this.color=Colors.black}); // change color text 1

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color:color,
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}   