import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class ChatBottomSheet extends StatelessWidget {
  const ChatBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 10,
            offset: Offset(0, 3),
          )
        ]
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 10),
          child: Image.asset("assets/image/add.png"),
          ),
            Padding(
            padding: EdgeInsets.only(left: 5),
          child: Image.asset("assets/image/camera.png"),
          ),
            Padding(
            padding: EdgeInsets.only(left: 5),
          child: Image.asset("assets/image/photo.png"),
          ),
          SizedBox(width: Dimensions.width10,),
          Expanded(child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(0.4),
              borderRadius: BorderRadius.circular(40)

            ),
            child: Row(
             children: [
              SizedBox(width: 10,),
               Image.asset("assets/image/smile.png"),
              SizedBox(width: 10,),
              Expanded(child: TextField(
                decoration: InputDecoration(
                  hintText: "Aa",
                  border: InputBorder.none
                ),
              ),
              
              ),
               Image.asset("assets/image/mic.png"),
               SizedBox(width: Dimensions.width20,)
             ],
            ),
            

          ),
          
          )
        ],
      ),
    );
  }
}