import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/widgets/app_large_text.dart';
import 'package:travelvietnam/widgets/app_text.dart';
import 'package:travelvietnam/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<WelcomePage> {
  List images = [
    "welcome_one.png",
    "welcome_two.png",
    "welcome_three.png",
  ];
   List textNormal = [
    "Địa điểm mới",
    "Tiết kiệm chi phí",
    "Lên kế hoạch",
  ];
   List textSmall = [
    "Thường xuyên cập nhật thông tin các địa điểm du lịch mới, cung cấp đầy đủ và thông tin chính xác",
    "Bạn có thể chọn nơi ăn uống, địa điểm tham quan, lưu trú ... dựa trên sở thích và điều kiện tài chính cá nhân.",
    "Tự lên kế hoạch du lịch cho bản thân, tự do di chuyển, chủ động về thời gian.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: images.length,
        itemBuilder: (_, index){
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/image/" + images[index]
                 ),
                 fit: BoxFit.cover
                )
            ),
              child: Container(
                margin: const EdgeInsets.only(top:150, left: 20, right: 20) ,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AppLargeText(text: 
                        "Du lịch đó đây",
                        color:AppColors.widget,
                        
                        ),
                        AppText(text: textNormal[index], size: 30,color:AppColors.widget,),
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: AppText(
                            text: textSmall[index],
                            color:AppColors.widget.withOpacity(0.8), // change color text 3
                            size: 16,
                        ),
                        ),
                        SizedBox(height: 40,),
                        ResponsiveButton(width: 120,)
                      ],
                    ),
                    Column(
                      children: List.generate(3, (indexDots){
                        return Container(
                          margin: const EdgeInsets.only(bottom: 4),
                          width: 8,
                          height: index==indexDots?25:8,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            color: index==indexDots?AppColors.navbar: AppColors.navbar.withOpacity(0.6) // change color widgets and opacity
                          ),
                        );
                      }),
                    )
                  ],
                  )
              ),
          );
      }),
    );
  }
}