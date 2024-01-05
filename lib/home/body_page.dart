import 'dart:ui';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/big_text.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/misc/small_text.dart';
import 'package:travelvietnam/travel/travel_detail.dart';
import 'package:travelvietnam/widgets/app_column.dart';
import 'package:travelvietnam/widgets/icon_text_widgets.dart';

class BodyPage extends StatefulWidget {
  const BodyPage({super.key});

  @override
  State<BodyPage> createState() => _BodyPage();
}

class _BodyPage extends State<BodyPage> {
  PageController pageController= PageController(viewportFraction: 0.85 );
  var _currPageValue= 0.0;
  double _scaleFactor=0.8;
  double _height= Dimensions.pageViewContainer;
  @override
  void initState(){
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue=pageController.page!;
      });
    });
  }
  @override
  void dispose(){
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
       Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Địa điểm",
              style: TextStyle(
                fontSize: Dimensions.font26,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".",color: Colors.black26,size: 20,),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: Text("Phổ biến",
              style: TextStyle(
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.bold,
              ),),
              ),
            ],
          ), 
        ),
        SizedBox(height: 10,),
        Container(
       height: Dimensions.pageView,
       //color: Colors.redAccent,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context,position){
        return _buildPageItem(position);
      }),
    ),
          new DotsIndicator(
          dotsCount: 5,
          position: _currPageValue,
          decorator: DotsDecorator(
            activeColor: AppColors.mainColor,
             activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
             
        ),
      ),
      SizedBox(height: Dimensions.height20,),
        Container(
          margin: EdgeInsets.only(left: Dimensions.width30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text("Địa điểm",
              style: TextStyle(
                fontSize: Dimensions.font26,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 3),
                child: BigText(text: ".",color: Colors.black26,size: 20,),
              ),
              SizedBox(width: Dimensions.width10,),
              Container(
                margin: const EdgeInsets.only(bottom: 2),
                child: Text("Mới",
              style: TextStyle(
                fontSize: Dimensions.font16,
                fontWeight: FontWeight.bold,
              ),),
              ),
            ],
          ), 
        ),
      ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: 8,
          itemBuilder: (context, index){
          return Container(
            margin: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,bottom: Dimensions.height10),
            child: InkWell(
               onTap: (){
                          Navigator.push( 
                                        context, 
                                        MaterialPageRoute( 
                                            builder: (context) => TravelDetail()));
                        },
              child: Row(
                children: [
                  Container(
                    width: Dimensions.listViewImgSize,
                    height: Dimensions.listViewImgSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Dimensions.radius20),
                      color: Colors.white38,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/image/location_0${index+1}.png' // change image list
                        )
                        )
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: Dimensions.listViewTextContSize,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(Dimensions.radius20),
                          bottomRight: Radius.circular(Dimensions.radius20),
                        ),
                        color: Colors.white
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: Dimensions.width5,right: Dimensions.width5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BigText(text: "Xu so suong mu thanh pho Da Lat"),
                            SizedBox(height: Dimensions.height10,),
                            SmallText(text: "Mua phun thang 7"),
                            SizedBox(height: Dimensions.height10,),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconTextWidget(icon: Icons.circle_sharp, 
                                    text: "Normal",
                                    iconColor: AppColors.Normal ),
                  
                                    IconTextWidget(icon: Icons.location_on, 
                                    text: "17km",
                                    iconColor: AppColors.Location ),
                  
                                    IconTextWidget(icon: Icons.access_time_rounded, 
                                    text: "32p",
                                    iconColor: AppColors.mainColor ),
                                ],
                              )
                          ],
                        ),
                        ),
                    ),
                    
                  )
                ],
              ),
            ),
          );

        }),

      ],
    );
  }
  Widget _buildPageItem(int index){
    Matrix4 matrix= new Matrix4.identity();

    if(index==_currPageValue.floor()){
      var currScale= 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans=_height*(1-currScale)/2;
      matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index==_currPageValue.floor()+1){
      var currScale= _scaleFactor+(_currPageValue-index+1)*(1-_scaleFactor);
      var currTrans=_height*(1-currScale)/2;
      matrix= Matrix4.diagonal3Values(1, currScale, 1);
      matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);

    }else if(index==_currPageValue.floor()-1){
      var currScale= 1-(_currPageValue-index)*(1-_scaleFactor);
      var currTrans=_height*(1-currScale)/2; 
      matrix= Matrix4.diagonal3Values(1, currScale, 1);
      matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, currTrans, 0);
    }else{
      var currScale=0.8;
      matrix= Matrix4.diagonal3Values(1, currScale, 1)..setTranslationRaw(0, _height*(1-_scaleFactor)/2, 1);
    }

    return Transform(
      transform: matrix,
      child: Stack( 
        children: [
          Container(
        height: Dimensions.pageViewContainer,
        margin: EdgeInsets.only(left: Dimensions.width10,right: Dimensions.width10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius30),
          color: index.isEven?Color(0xFF69c5df) : Color(0xFF9294cc),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              'assets/image/location_0${index+1}.png'
              )
              )
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: Dimensions.pageViewTextContainer, 
          margin: EdgeInsets.only(left: Dimensions.width30,right: Dimensions.width30,bottom: Dimensions.height30),// positon khung trang
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                 color: Color(0xFFDBDBDB),  //box shadow
                 blurRadius: 5.0,
                 offset: Offset(0,5)
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(-5,0)
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(5,0)
              )
             
            ]
           
          ),
          child: Container(
            padding: EdgeInsets.only(top: Dimensions.height15,left: Dimensions.height15,right: Dimensions.height15),
            child: AppColumn(text: "Đà Lạt",),
          ),

        ),
      )
        ],
      ),
    );
  }
}