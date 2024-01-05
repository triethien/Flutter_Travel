import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/post/post_detail.dart';

class BodyPostPage extends StatefulWidget {
  const BodyPostPage({super.key});

  @override
  State<BodyPostPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<BodyPostPage> {
  @override
  Widget build(BuildContext context) {
          final width = MediaQuery.of(context).size.width;
          final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: width *0.9,
          height: height *0.15,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius40),
           // color: Colors.red,
            boxShadow: [
              BoxShadow(
                color: Color(0xFFe8e8e8),
                blurRadius: 5.0,
                offset: Offset(0, 5), 
              ),
              BoxShadow(
               color: Colors.white,
                offset: Offset(-5, 0), 
              ),
              BoxShadow(
                color: Colors.white,
                offset: Offset(5, 0), 
              ),
            ]
          ),
          child: Column(
            children: [
              SizedBox(height: Dimensions.height20,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Dimensions.height20),
                    child: Image.asset("assets/image/imagepost.png",width: Dimensions.width100,height: Dimensions.height100,fit: BoxFit.cover,),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [      
                        Text("Du hí ở Dinh Độc Lập...",style: TextStyle(
                                        fontSize: Dimensions.font16,     
                                      ),),
                        Text("15 giờ trước",style: TextStyle(
                                        fontSize: Dimensions.font12,
                                      ),)
                      ],
                    ),
                    SizedBox(width: Dimensions.width50,),
                    Image.asset("assets/image/tick.png")
                ],
              ),
            ],
          ),
        ),
        Column(
                  children: [
                      SizedBox(height: Dimensions.height20,),
                              Row(
                      children: [
                          SizedBox(width: Dimensions.width20,),
                        CircleAvatar(backgroundImage: AssetImage("assets/image/avatar.jpg"),
                        radius: Dimensions.radius25,
                        ),
                        SizedBox(width: Dimensions.width20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Nguyễn Hiền Triết,",
                                      style: TextStyle(
                                            fontSize: Dimensions.font16,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          SizedBox(width: Dimensions.width10,),
                                          Text("Đề xuất",
                                          style: TextStyle(
                                            fontSize: Dimensions.font12,
                                            fontWeight: FontWeight.bold,
                                            color: AppColors.textColor4
                                          ),
                                          ),
                                      ],
                                    ),
                              
                            SizedBox(height: Dimensions.height10,),
                                    Row(
                                      children: [
                                        Text("Bình Dương, Việt Nam,",style: TextStyle(
                                                fontSize: Dimensions.font14,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.textColor2
                                              ),),
                                        SizedBox(width: 20,),
                                        Text("2 ngày trước",style: TextStyle(
                                                fontSize: Dimensions.font14,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.textColor2
                                              ),),
                                      ],
                                    )

                                  ],
                                ), 
                      ],
                    ),
                    SizedBox(height: Dimensions.height20,),
                    InkWell(
                      onTap: (){
                         Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => PostDetail()));
                      },
                      child: Container(
                      padding: const EdgeInsets.all(14),
                      height: MediaQuery.of(context).size.height *0.48,
                      width: MediaQuery.of(context).size.width *0.9,         
                      decoration: BoxDecoration(
                      //  color: Colors.red,
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        image: DecorationImage(
                        image: AssetImage('assets/image/location_09.png'),
                        fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start ,
                            children: [
                              Text("Phố Cổ Hội An",
                               style: TextStyle(
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                              Row(
                                children: [
                                  Icon(Icons.location_on_rounded,color: AppColors.Orange,),
                                    Text("Quảng Nam, Việt Nam",
                                    style: TextStyle(
                                       color: Colors.white
                                    ),),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: Dimensions.width10,),
                        Row(
                          children: [
                            SizedBox(width: Dimensions.width20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/image/heart.png"),
                                SizedBox(width: Dimensions.width10,),
                                Text("67", style: TextStyle(
                                      fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainColor
                                    ),),
                              ],
                            ),
                            SizedBox(width: Dimensions.width20,),
                            Row(
                              children: [
                                Image.asset("assets/image/messpost.png"),
                                SizedBox(width: Dimensions.width10,),
                                Text("120",
                                 style: TextStyle(
                                      fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainColor
                                    ),),
                              ],
                            ),
                              SizedBox(width: Dimensions.width200,),
                            Image.asset("assets/image/dot.png"),
                          ],
                        ),
                        
                                ],),
                  ],
                ),
                Column(
                  children: [
                      SizedBox(height: Dimensions.height20,),
                              Row(
                      children: [
                          SizedBox(width: Dimensions.width20,),
                        CircleAvatar(backgroundImage: AssetImage("assets/image/avatar.jpg"),
                        radius: Dimensions.radius25,
                        ),
                        SizedBox(width: Dimensions.width20,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text("Nguyễn Hiền Triết,",
                                      style: TextStyle(
                                            fontSize: Dimensions.font16,
                                            fontWeight: FontWeight.bold,
                                          ),),
                                          SizedBox(width: Dimensions.width10,),
                                      ],
                                    ),
                              
                            SizedBox(height: Dimensions.height10,),
                                    Row(
                                      children: [
                                        Text("Bình Dương, Việt Nam,",style: TextStyle(
                                                fontSize: Dimensions.font14,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.textColor2
                                              ),),
                                        SizedBox(width: 20,),
                                        Text("2 ngày trước",style: TextStyle(
                                                fontSize: Dimensions.font14,
                                                fontWeight: FontWeight.bold,
                                                color: AppColors.textColor2
                                              ),),
                                      ],
                                    )

                                  ],
                                ), 
                      ],
                    ),
                    SizedBox(height: Dimensions.height20,),
                    InkWell(
                      onTap: (){
                         Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => PostDetail()));
                      },
                      child: Container(
                      padding: const EdgeInsets.all(14),
                      height: MediaQuery.of(context).size.height *0.48,
                      width: MediaQuery.of(context).size.width *0.9,         
                      decoration: BoxDecoration(
                      //  color: Colors.red,
                        borderRadius: BorderRadius.circular(Dimensions.radius20),
                        image: DecorationImage(
                        image: AssetImage('assets/image/location_09.png'),
                        fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start ,
                            children: [
                              Text("Phố Cổ Hội An",
                               style: TextStyle(
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                              Row(
                                children: [
                                  Icon(Icons.location_on_rounded,color: AppColors.Orange,),
                                    Text("Quảng Nam, Việt Nam",
                                    style: TextStyle(
                                       color: Colors.white
                                    ),),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    ),
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: Dimensions.width10,),
                        Row(
                          children: [
                            SizedBox(width: Dimensions.width20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset("assets/image/heart.png"),
                                SizedBox(width: Dimensions.width10,),
                                Text("67", style: TextStyle(
                                      fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainColor
                                    ),),
                              ],
                            ),
                            SizedBox(width: Dimensions.width20,),
                            Row(
                              children: [
                                Image.asset("assets/image/messpost.png"),
                                SizedBox(width: Dimensions.width10,),
                                Text("120",
                                 style: TextStyle(
                                      fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainColor
                                    ),),
                              ],
                            ),
                              SizedBox(width: Dimensions.width200,),
                            Image.asset("assets/image/dot.png"),
                          ],
                        ),
                        
                                ],),
                  ],
                ),
                
      ],
    );
  }
}