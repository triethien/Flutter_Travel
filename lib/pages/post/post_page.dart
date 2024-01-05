import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/big_text.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/misc/small_text.dart';
import 'package:travelvietnam/pages/notification/notification_page.dart';
import 'package:travelvietnam/pages/post/bodypost_page.dart';
import 'package:travelvietnam/pages/rankleader/ranking_board.dart';
import 'package:travelvietnam/pages/social%20network/social_network.dart';

class PostPage extends StatefulWidget {
  const PostPage({super.key});

  @override
  State<PostPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PostPage> {
  @override
  Widget build(BuildContext context) {
           final width = MediaQuery.of(context).size.width;
           final height = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Column(
        children: [
          Container(
            height: Dimensions.height135,
            child: SizedBox(
              child: Container(
       height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height55,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.navbar, // mau thanh bottom navigation
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimensions.radius20),
            bottomRight: Radius.circular(Dimensions.radius20)
          ),
        ),
        
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                   GestureDetector(
                  child: CircleAvatar(backgroundImage: AssetImage("assets/image/avatar.jpg"),
                radius: Dimensions.radius25,
                ),
                onTap: (){
                    Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => SocialNetworkPage())); 
                },
                )  
     
              ],
            ),
            Column(
                children: [
                     BigText(text: "Chào, Nguyễn Hiền Triết",color: Colors.white.withOpacity(0.9),size: Dimensions.font20,),
                Row(
                  children: [
                      Icon(Icons.location_on_outlined,color: Colors.white.withOpacity(0.6),size:Dimensions.font18,),
                      SmallText(text: "Bình Dương, Việt Nam",color: Colors.grey,),
                      
                  ],
                ) // change color Text 1
                ],

            ),
            Column( 
                            mainAxisAlignment: MainAxisAlignment.start, 
                            children: [ 
                              // gesture detector to detect the image tab 
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
                            ], 
                          ),
                          Column( 
                            mainAxisAlignment: MainAxisAlignment.start, 
                            children: [ 
                              // gesture detector to detect the image tab 
                              GestureDetector(   
                                child: Image.asset( 
                                  'assets/image/notification.png', 
                                ), 
                                onTap: () { 
                                  Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => NotificationPage())); 
                                }, 
                              ), 
                            ], 
                          ),
          ],
        ),
      ),
            ),
          ),
            SizedBox(height: Dimensions.height20,),
            Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          width: width * 0.72,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1), // color background search
                            borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius10)),
                            border: Border.all(),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(1, 1),
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                             
                              Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.03),
                              Expanded(child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Tìm kiếm',
                                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.9))
                                  ),
                              )
                              ),
                              Image.asset("assets/image/line.png",width: Dimensions.width30,height: Dimensions.height30,),
                              Image.asset("assets/image/camera.png"),
                            ],
                          ),

                        ),
                        SizedBox(width: Dimensions.width10,),
                        Container(           
                          width: width * 0.12,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: AppColors.navbar,
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child:  Image.asset("assets/image/prefercense.png"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Dimensions.height10,),
                      Expanded(child: SingleChildScrollView(
                        child: BodyPostPage(),
                      )),
                        ],
      ),
    );
  }
}