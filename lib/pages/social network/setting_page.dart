import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/login/login_page.dart';
import 'package:travelvietnam/pages/rankleader/ranking_board.dart';
import 'package:travelvietnam/pages/social%20network/social_network.dart';

class SetttingPage extends StatelessWidget {
  const SetttingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/image/BackGroundLogin.png"),
        fit: BoxFit.cover
        )

      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(child: 
          Container(
            height: 800,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20),
                topRight: Radius.circular(Dimensions.radius20)
              ),
             color: AppColors.mainColor
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                     IconButton(onPressed: (){
                                    Navigator.push(
                                    context,
                                      MaterialPageRoute(
                                    builder: (context) => SocialNetworkPage()));
                          },  icon: Image.asset("assets/image/arrowup.png"),),
                       SizedBox(width: Dimensions.width20,)
                  ],
                ),
                Row(
                    children: [
                    SizedBox(width: Dimensions.width20,),
                     CircleAvatar(
                      radius: Dimensions.radius40,
                      backgroundImage: AssetImage(
                        "assets/image/avatar.jpg"
                      ),
                       ),
                       SizedBox(width: Dimensions.width15,),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                      "Nguyễn Hiền Triết",
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                      ),
                    ),
                    SizedBox(height: Dimensions.height10,),
                     Row(
                      children: [
                        Icon(Icons.location_on_outlined,color: Colors.white.withOpacity(0.5),size: Dimensions.font14,),
                        Text(" Bình Dương, Việt Nam",style: TextStyle(color: Colors.white.withOpacity(0.5)),)
                      ],
                     )
                      ],
                    )
                    ],
                ),
                SizedBox(height: Dimensions.height10,),
          ListTile(
            onTap: (){},
            title: Text("Tài khoản",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.font16,
              color: Colors.white.withOpacity(0.6)
    
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: Dimensions.font18,  ),
         
          ),
          ListTile(
            onTap: (){},
            title: Text("Ngôn ngữ",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.font16,
              color: Colors.white.withOpacity(0.6)
    
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: Dimensions.font18,  ),
         
          ),
          ListTile(
            onTap: (){},
            title: Text("Bảo mật",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.font16,
              color: Colors.white.withOpacity(0.6)
    
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: Dimensions.font18,  ),
         
          ),
          ListTile(
            onTap: (){
               Navigator.push(
                                    context,
                                      MaterialPageRoute(
                                    builder: (context) => RankingBoard()));
            },
            title: Text("Xếp hạng",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.font16,
              color: Colors.white.withOpacity(0.6)
    
            ),
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded,color: Colors.white,size: Dimensions.font18,  ),
         
          ),
          Divider(height: Dimensions.height20, 
          ),
           ListTile(
            onTap: (){},  
            title: Text("What's New",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.font16,
              color: Colors.white.withOpacity(0.6)
    
            ),
            ),
            trailing: Image.asset("assets/image/logsetting.png")
         
          ),
           ListTile(
            onTap: (){},
            title: Text("FAQ",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.font16,
              color: Colors.white.withOpacity(0.6)
    
            ),
            ),
           trailing: Image.asset("assets/image/logsetting.png")
         
          ),
           ListTile(
            onTap: (){},
            title: Text("Terms of Service",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.font16,
              color: Colors.white.withOpacity(0.6)
    
            ),
            ),
           trailing: Image.asset("assets/image/logsetting.png")
         
          ),
           ListTile(
            onTap: (){},
            title: Text("Privacy Policy",
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Dimensions.font16,
              color: Colors.white.withOpacity(0.6)
    
            ),
            ),
           trailing: Image.asset("assets/image/logsetting.png")
         
          ),
          Image.asset("assets/image/ImageRank.png"),
            SizedBox(height: Dimensions.height25,),
            GestureDetector(
                            child: Container(
                              width: 250,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(Dimensions.radius15),
                              ),
                              child: ElevatedButton(   
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white, // color button dang nhap
                                ),                         
                                  child: Text(                                
                                    "Đăng xuất",                                 
                                    style: TextStyle(color: AppColors.mainColor, fontSize: Dimensions.font18, fontWeight: FontWeight.bold),),
                                  onPressed: () {
                                       Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) => LoginPage()));
                                  }
                                  ),
                            ),
                          ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}