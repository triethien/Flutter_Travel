import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/rankleader/ranking_board.dart';
import 'package:travelvietnam/pages/social%20network/body_social.dart';
import 'package:travelvietnam/pages/social%20network/feed_view.dart';
import 'package:travelvietnam/pages/social%20network/reels_view.dart';
import 'package:travelvietnam/pages/social%20network/setting_page.dart';
import 'package:travelvietnam/pages/social%20network/tagged_view.dart';

class SocialNetworkPage extends StatefulWidget {
  const SocialNetworkPage({super.key});

  @override
  State<SocialNetworkPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SocialNetworkPage> {
    final List<Widget> tabs= const [
              Tab(text: "Hình ảnh",),
              Tab(text: "Video",),
              Tab(text: "Bài viết",)
  ];
  final List<Widget> tabBarView=[
    FeedView(),
    ReelsView(),
    TaggedView(),

  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3, 
    child: Scaffold(
      body: Stack(
        children: [
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
            Positioned(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.height *0.44,
                    child: AppBar(
                    backgroundColor: Colors.transparent, elevation: 0.0,
                         leadingWidth: 30,
                         iconTheme: IconThemeData(
                          color: Colors.white,
                         ),
                         centerTitle: true,
                         actions: [
                              GestureDetector(   
                                  child: Image.asset( 
                                    'assets/image/rating.png', 
                                  ), 
                                  onTap: () { 
                                    Navigator.push( 
                                        context, 
                                        MaterialPageRoute( 
                                            builder: (context) => RankingBoard())); 
                                  }, 
                                ), 
                                SizedBox(width: Dimensions.width10,),
                    GestureDetector(   
                                  child: Image.asset( 
                                    'assets/image/setting.png', 
                                  ), 
                                  onTap: () { 
                                    Navigator.push( 
                                        context, 
                                        MaterialPageRoute( 
                                            builder: (context) => SetttingPage())); 
                                  }, 
                                ), 
                         ],
                                  ),
                  ),
                  //SizedBox(width: Dimensions.width270,),

                ],
            )
            ),
        Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top:  Dimensions.popularTravelImgSize-150,
              child: Container(
              padding: EdgeInsets.only(left: Dimensions.width20,right: Dimensions.width20,top: Dimensions.height20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius30),
                  topLeft: Radius.circular(Dimensions.radius30),
                ),
                color: Colors.white
              ) ,            
             ),      
            ),
           Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top:  Dimensions.popularTravelImgSize-220,
            child: Column(
                children: [
                  BodySocialPage(),
                     TabBar( labelStyle: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor
                      ),
                      labelColor: AppColors.mainColor,
                      indicatorColor: AppColors.mainColor,
                      indicatorSize: TabBarIndicatorSize.tab,
                        tabs: tabs),
                      Expanded(child: TabBarView(children: tabBarView),)
                ],
            )
           ),
        
        ],
      ),
    )
    );
  }
}