import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/big_text.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/widgets/app_column.dart';
import 'package:travelvietnam/widgets/app_icon.dart';
import 'package:travelvietnam/widgets/expandable_text_widget.dart';

class PopularTravelDetail extends StatelessWidget {
  const PopularTravelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        
        children: [
          //baackground image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width:  double.maxFinite,
              height: Dimensions.popularTravelImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    "assets/image/welcome_one.jpg"
                    )
                    )
              ),

             )
            ),
            //icon widget
            Positioned(
              top: Dimensions.height45+10,
              left: Dimensions.width20,
              right: Dimensions.width20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppIcon(icon: Icons.arrow_back_ios),
                  AppIcon(icon: Icons.bookmark_border)
                ],

            )
            ),
            //introduction
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top:  Dimensions.popularTravelImgSize-20,
              child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Đà Lạt",),
                  SizedBox(height: Dimensions.height20,),
                  BigText(text: "Introduce"),
                  SizedBox(height: Dimensions.height20,),
                  Expanded(child: SingleChildScrollView(child: ExpandableTextWidget(text: "Nhắc đến Đà Lạt, chắc hẳn khách du lịch không thể không nhớ đến những tên gọi mỹ miều như “thành phố nên thơ”, “thành phố sương”, “thành phố ngàn hoa”... Trực thuộc tỉnh Lâm Đồng, nơi đây được thiên nhiên ưu ái rất nhiều phong cảnh đẹp cùng không khí trong lành, khí hậu mát mẻ quanh năm Nhắc đến Đà Lạt, chắc hẳn khách du lịch không thể không nhớ đến những tên gọi mỹ miều như “thành phố nên thơ”, “thành phố sương”, “thành phố ngàn hoa”... Trực thuộc tỉnh Lâm Đồng, nơi đây được thiên nhiên ưu ái rất nhiều phong cảnh đẹp cùng không khí trong lành, khí hậu mát mẻ quanh năm")))

                ],
              ) ,
            )
            )

        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height30,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.textColor2, // mau thanh bottom navigation
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20*2),
            topRight: Radius.circular(Dimensions.radius20*2)
          ),
        ),
       child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
               padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height20,left: Dimensions.width20,right: Dimensions.width20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: Colors.white
              ),
              child: Row(
                children: [
                   Icon(Icons.favorite_border_outlined, color: AppColors.textColor2),
                ],
               

              ),
                 
            ),
            Container(
              padding: EdgeInsets.only(top: Dimensions.height20,bottom: Dimensions.height15,left: Dimensions.width20,right: Dimensions.width20),
              child: BigText(text: "Tạo kế hoạch",color: Colors.white,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Dimensions.radius20),
                color: AppColors.mainColor
              ),
            ),
          ],
        ),
      ),

    );
  }
}