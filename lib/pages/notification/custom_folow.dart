import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/widgets/custom_button.dart';

class CustomFolowNotification extends StatefulWidget {
  const CustomFolowNotification({super.key});

  @override
  State<CustomFolowNotification> createState() => _CustomFolowNotification();
}

class _CustomFolowNotification extends State<CustomFolowNotification> {
  bool follow=true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundImage: AssetImage("assets/image/user_1.jpg"),

        ),
        SizedBox(width: 15,),
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Bùi Quốc Triệu",
              style: TextStyle(
                fontSize: Dimensions.font18,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 5,),
            Text(
              "Đã theo dõi bạn . 1 giờ",
              style: TextStyle(
                fontSize: Dimensions.font14,
                color: Colors.black.withOpacity(0.6)
              ),
            )

          ],
        ),
        SizedBox(width: Dimensions.width45,),
        Expanded(child: Padding(
          padding: EdgeInsets.only(left: follow == false ? 50:30),
          child: CustomButton(
            height: 40,
            color: follow==false?primary:form,
            textColor: follow==false?Colors.black:mainText,
            onTap: (){
                setState(() {
                  follow=!follow;
                });
          }, text: "Theo dõi"),
        )
        ),
        
      ],
    );
  }
}