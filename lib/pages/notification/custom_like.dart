import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class CustomLikeNotification extends StatelessWidget {
  const CustomLikeNotification({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: Stack(
            children: const [
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: CircleAvatar(
                  radius: 25,backgroundImage: AssetImage("assets/image/user_2.jpg"),
                ),
              ),
              Positioned(
                bottom: 10,
                child: CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/image/user_3.jpg"),
                ),
              )
            ],
          ),
        ),
        const SizedBox(width: 10,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              RichText(
              maxLines: 2,
              text: 
              TextSpan(
                text: "Hứa Hoàng Tiến Đạt",
                style: TextStyle(
                  fontSize: Dimensions.font18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                children: [
                  TextSpan(text: " và \n",style: TextStyle(
                  fontSize: Dimensions.font18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black.withOpacity(0.6),
                ),
                ),
                TextSpan(
                  text: "Tô Vĩnh Thành"
                )
                ]
              )
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "Đã thích bài viết của bạn . 13 giờ",
                 style: TextStyle(
                  fontSize: Dimensions.font14,
                  color: Colors.black.withOpacity(0.6)
                ),
              )
            ],
          ),
        ),
        ClipRRect(
           borderRadius: BorderRadius.circular(Dimensions.radius20),
          child: Image.asset("assets/image/mountain.jpg",height: 64,width: 64,),
        ),
      ],
    );
  }
}