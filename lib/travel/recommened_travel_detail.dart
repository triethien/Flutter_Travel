import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/big_text.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/widgets/app_icon.dart';
import 'package:travelvietnam/widgets/expandable_text_widget.dart';

class RecommenedTravelDetail extends StatelessWidget {
  const RecommenedTravelDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.bookmark_border)

              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                 child: Center(child: BigText(size: Dimensions.font26, text: "Da Lat")),
                 width: double.maxFinite,
                 padding: EdgeInsets.only(top: 5,bottom: 10),
                 decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20)
                  )
                 ),
              ),
             
            ),
            pinned: true,
            backgroundColor: AppColors.mainColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/welcome_one.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
                ),
                 // doi anh background
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(text: "Nhắc đến Đà Lạt, chắc hẳn khách du lịch không thể không nhớ đến những tên gọi mỹ miều như “thành phố nên thơ”, “thành phố sương”, “thành phố ngàn hoa”... Trực thuộc tỉnh Lâm Đồng, nơi đây được thiên nhiên ưu ái rất nhiều phong cảnh đẹp cùng không khí trong lành, khí hậu mát mẻ quanh năm Nhắc đến Đà Lạt, chắc hẳn khách du lịch không thể không nhớ đến những tên gọi mỹ miều như “thành phố nên thơ”, “thành phố sương”, “thành phố ngàn hoa”... Trực thuộc tỉnh Lâm Đồng, nơi đây được thiên nhiên ưu ái rất nhiều phong cảnh đẹp cùng không khí trong lành, khí hậu mát mẻ quanh năm"),
                  margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20),
                )
              ],
            ),
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