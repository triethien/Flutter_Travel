import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/pages/login/login_page.dart';
class ResponsiveButton extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ResponsiveButton({super.key, this.width, this.isResponsive=false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.navbar,
        
      ),
      child: IconButton(
        icon: Icon(
          Icons.arrow_forward_ios,color: Colors.white,), 
          onPressed: () { 
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
       },
      )
    );
  }
}