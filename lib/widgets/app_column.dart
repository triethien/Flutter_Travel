import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/big_text.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/misc/small_text.dart';
import 'package:travelvietnam/widgets/icon_text_widgets.dart';

class AppColumn extends StatelessWidget {
  final String text;
  const AppColumn({super.key, 
  required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BigText(text: text,size: Dimensions.font26,), // text lon chua ten dia diem
                SizedBox(height: Dimensions.height5,),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(5, (index) { return Icon(Icons.star,color: AppColors.Stars,size: 14,);}),
                    ),
                    SizedBox(width: 10,),
                    SmallText(text: "4.5"),
    
                    SizedBox(width: 10,),
                     SmallText(text: "1990"),
    
                    SizedBox(width: 10,),
                     SmallText(text: "Comment"),
    
                  ],
                ),
                SizedBox(height: Dimensions.height10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconTextWidget(icon: Icons.circle_sharp, 
                      text: "Normal",
                      iconColor: AppColors.Normal ),
    
                      IconTextWidget(icon: Icons.location_on, 
                      text: "1.7km",
                      iconColor: AppColors.Location ),
    
                      IconTextWidget(icon: Icons.access_time_rounded, 
                      text: "32p",
                      iconColor: AppColors.mainColor ),
                  ],
                )
              ],
            );
  }
}