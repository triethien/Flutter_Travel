import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class LikeView extends StatelessWidget {
  const LikeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.height10,),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (BuildContext context,int index){
                return Column(
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
                        Text("Chào, Nguyễn Hiền Triết",
                          style: TextStyle(
                                fontSize: Dimensions.font20,
                                fontWeight: FontWeight.bold,
                              ),),
                        Text("12, tháng 12, 2022"),

                      ],
                    ), 
                      ],
                    ),
                    SizedBox(height: Dimensions.height10,),
                    Container(
                      margin: const EdgeInsets.symmetric(
                         horizontal: 18,
                         vertical: 5, 
                      ),
                      padding: const EdgeInsets.all(14),
                      height: MediaQuery.of(context).size.height *0.28,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      //  color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                        image: AssetImage('assets/image/location_0${index+1}.png'),
                        fit: BoxFit.cover,
                        )
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.favorite_sharp,color: Colors.white,)
                            ],
                          ),
                          const Spacer(),
                          Column(
                            crossAxisAlignment:CrossAxisAlignment.start ,
                            children: [
                              Text("Chợ Nổi Cà Mau",
                               style: TextStyle(
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                                  ),),
                              Row(
                                children: [
                                  Icon(Icons.location_on_rounded,color: AppColors.Orange,),
                                    Text("Cà Mau, Việt Nam",
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
                                Text("120", style: TextStyle(
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
                                Text("67",
                                 style: TextStyle(
                                      fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.mainColor
                                    ),),
                              ],
                            ),
                              SizedBox(width: 220,),
                            Image.asset("assets/image/share.png"),
                          ],
                        ),
                        
                                ],),
                  ],
                );
}
              ),
            

          ],
        ),
      ),
    );
  }
}